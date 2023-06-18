local StrToNumber = tonumber;
local Byte = string.byte;
local Char = string.char;
local Sub = string.sub;
local Subg = string.gsub;
local Rep = string.rep;
local Concat = table.concat;
local Insert = table.insert;
local LDExp = math.ldexp;
local GetFEnv = getfenv or function()
	return _ENV;
end;
local Setmetatable = setmetatable;
local PCall = pcall;
local Select = select;
local Unpack = unpack or table.unpack;
local ToNumber = tonumber;
local function VMCall(ByteString, vmenv, ...)
	local DIP = 1;
	local repeatNext;
	ByteString = Subg(Sub(ByteString, 5), "..", function(byte)
		if (Byte(byte, 2) == 79) then
			repeatNext = StrToNumber(Sub(byte, 1, 1));
			return "";
		else
			local a = Char(StrToNumber(byte, 16));
			if repeatNext then
				local b = Rep(a, repeatNext);
				repeatNext = nil;
				return b;
			else
				return a;
			end
		end
	end);
	local function gBit(Bit, Start, End)
		if End then
			local Res = (Bit / (2 ^ (Start - 1))) % (2 ^ (((End - 1) - (Start - 1)) + 1));
			return Res - (Res % 1);
		else
			local Plc = 2 ^ (Start - 1);
			return (((Bit % (Plc + Plc)) >= Plc) and 1) or 0;
		end
	end
	local function gBits8()
		local a = Byte(ByteString, DIP, DIP);
		DIP = DIP + 1;
		return a;
	end
	local function gBits16()
		local a, b = Byte(ByteString, DIP, DIP + 2);
		DIP = DIP + 2;
		return (b * 256) + a;
	end
	local function gBits32()
		local a, b, c, d = Byte(ByteString, DIP, DIP + 3);
		DIP = DIP + 4;
		return (d * 16777216) + (c * 65536) + (b * 256) + a;
	end
	local function gFloat()
		local Left = gBits32();
		local Right = gBits32();
		local IsNormal = 1;
		local Mantissa = (gBit(Right, 1, 20) * (2 ^ 32)) + Left;
		local Exponent = gBit(Right, 21, 31);
		local Sign = ((gBit(Right, 32) == 1) and -1) or 1;
		if (Exponent == 0) then
			if (Mantissa == 0) then
				return Sign * 0;
			else
				Exponent = 1;
				IsNormal = 0;
			end
		elseif (Exponent == 2047) then
			return ((Mantissa == 0) and (Sign * (1 / 0))) or (Sign * NaN);
		end
		return LDExp(Sign, Exponent - 1023) * (IsNormal + (Mantissa / (2 ^ 52)));
	end
	local function gString(Len)
		local Str;
		if not Len then
			Len = gBits32();
			if (Len == 0) then
				return "";
			end
		end
		Str = Sub(ByteString, DIP, (DIP + Len) - 1);
		DIP = DIP + Len;
		local FStr = {};
		for Idx = 1, #Str do
			FStr[Idx] = Char(Byte(Sub(Str, Idx, Idx)));
		end
		return Concat(FStr);
	end
	local gInt = gBits32;
	local function _R(...)
		return {...}, Select("#", ...);
	end
	local function Deserialize()
		local Instrs = {};
		local Functions = {};
		local Lines = {};
		local Chunk = {Instrs,Functions,nil,Lines};
		local ConstCount = gBits32();
		local Consts = {};
		for Idx = 1, ConstCount do
			local Type = gBits8();
			local Cons;
			if (Type == 1) then
				Cons = gBits8() ~= 0;
			elseif (Type == 2) then
				Cons = gFloat();
			elseif (Type == 3) then
				Cons = gString();
			end
			Consts[Idx] = Cons;
		end
		Chunk[3] = gBits8();
		for Idx = 1, gBits32() do
			local Descriptor = gBits8();
			if (gBit(Descriptor, 1, 1) == 0) then
				local Type = gBit(Descriptor, 2, 3);
				local Mask = gBit(Descriptor, 4, 6);
				local Inst = {gBits16(),gBits16(),nil,nil};
				if (Type == 0) then
					Inst[3] = gBits16();
					Inst[4] = gBits16();
				elseif (Type == 1) then
					Inst[3] = gBits32();
				elseif (Type == 2) then
					Inst[3] = gBits32() - (2 ^ 16);
				elseif (Type == 3) then
					Inst[3] = gBits32() - (2 ^ 16);
					Inst[4] = gBits16();
				end
				if (gBit(Mask, 1, 1) == 1) then
					Inst[2] = Consts[Inst[2]];
				end
				if (gBit(Mask, 2, 2) == 1) then
					Inst[3] = Consts[Inst[3]];
				end
				if (gBit(Mask, 3, 3) == 1) then
					Inst[4] = Consts[Inst[4]];
				end
				Instrs[Idx] = Inst;
			end
		end
		for Idx = 1, gBits32() do
			Functions[Idx - 1] = Deserialize();
		end
		return Chunk;
	end
	local function Wrap(Chunk, Upvalues, Env)
		local Instr = Chunk[1];
		local Proto = Chunk[2];
		local Params = Chunk[3];
		return function(...)
			local Instr = Instr;
			local Proto = Proto;
			local Params = Params;
			local _R = _R;
			local VIP = 1;
			local Top = -1;
			local Vararg = {};
			local Args = {...};
			local PCount = Select("#", ...) - 1;
			local Lupvals = {};
			local Stk = {};
			for Idx = 0, PCount do
				if (Idx >= Params) then
					Vararg[Idx - Params] = Args[Idx + 1];
				else
					Stk[Idx] = Args[Idx + 1];
				end
			end
			local Varargsz = (PCount - Params) + 1;
			local Inst;
			local Enum;
			while true do
				Inst = Instr[VIP];
				Enum = Inst[1];
				if (Enum <= 27) then
					if (Enum <= 13) then
						if (Enum <= 6) then
							if (Enum <= 2) then
								if (Enum <= 0) then
									local A = Inst[2];
									local Step = Stk[A + 2];
									local Index = Stk[A] + Step;
									Stk[A] = Index;
									if (Step > 0) then
										if (Index <= Stk[A + 1]) then
											VIP = Inst[3];
											Stk[A + 3] = Index;
										end
									elseif (Index >= Stk[A + 1]) then
										VIP = Inst[3];
										Stk[A + 3] = Index;
									end
								elseif (Enum == 1) then
									Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];
								else
									local A = Inst[2];
									local Step = Stk[A + 2];
									local Index = Stk[A] + Step;
									Stk[A] = Index;
									if (Step > 0) then
										if (Index <= Stk[A + 1]) then
											VIP = Inst[3];
											Stk[A + 3] = Index;
										end
									elseif (Index >= Stk[A + 1]) then
										VIP = Inst[3];
										Stk[A + 3] = Index;
									end
								end
							elseif (Enum <= 4) then
								if (Enum == 3) then
									local A = Inst[2];
									Stk[A](Unpack(Stk, A + 1, Top));
								else
									Stk[Inst[2]] = {};
								end
							elseif (Enum == 5) then
								Stk[Inst[2]] = #Stk[Inst[3]];
							else
								Stk[Inst[2]] = Stk[Inst[3]];
							end
						elseif (Enum <= 9) then
							if (Enum <= 7) then
								VIP = Inst[3];
							elseif (Enum > 8) then
								local A = Inst[2];
								do
									return Stk[A](Unpack(Stk, A + 1, Inst[3]));
								end
							else
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Stk[A + 1]));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							end
						elseif (Enum <= 11) then
							if (Enum == 10) then
								Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];
							else
								Stk[Inst[2]] = #Stk[Inst[3]];
							end
						elseif (Enum > 12) then
							Stk[Inst[2]] = Stk[Inst[3]] % Inst[4];
						else
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
						end
					elseif (Enum <= 20) then
						if (Enum <= 16) then
							if (Enum <= 14) then
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							elseif (Enum == 15) then
								local A = Inst[2];
								do
									return Unpack(Stk, A, Top);
								end
							else
								local NewProto = Proto[Inst[3]];
								local NewUvals;
								local Indexes = {};
								NewUvals = Setmetatable({}, {__index=function(_, Key)
									local Val = Indexes[Key];
									return Val[1][Val[2]];
								end,__newindex=function(_, Key, Value)
									local Val = Indexes[Key];
									Val[1][Val[2]] = Value;
								end});
								for Idx = 1, Inst[4] do
									VIP = VIP + 1;
									local Mvm = Instr[VIP];
									if (Mvm[1] == 49) then
										Indexes[Idx - 1] = {Stk,Mvm[3]};
									else
										Indexes[Idx - 1] = {Upvalues,Mvm[3]};
									end
									Lupvals[#Lupvals + 1] = Indexes;
								end
								Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
							end
						elseif (Enum <= 18) then
							if (Enum == 17) then
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Top)));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							else
								local A = Inst[2];
								local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Top)));
								Top = (Limit + A) - 1;
								local Edx = 0;
								for Idx = A, Top do
									Edx = Edx + 1;
									Stk[Idx] = Results[Edx];
								end
							end
						elseif (Enum > 19) then
							Env[Inst[3]] = Stk[Inst[2]];
						else
							Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
						end
					elseif (Enum <= 23) then
						if (Enum <= 21) then
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						elseif (Enum == 22) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Stk[A + 1]));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						else
							Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
						end
					elseif (Enum <= 25) then
						if (Enum == 24) then
							Stk[Inst[2]] = Stk[Inst[3]] - Inst[4];
						else
							VIP = Inst[3];
						end
					elseif (Enum == 26) then
						local A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
					else
						Stk[Inst[2]] = Stk[Inst[3]] - Inst[4];
					end
				elseif (Enum <= 41) then
					if (Enum <= 34) then
						if (Enum <= 30) then
							if (Enum <= 28) then
								local A = Inst[2];
								local Index = Stk[A];
								local Step = Stk[A + 2];
								if (Step > 0) then
									if (Index > Stk[A + 1]) then
										VIP = Inst[3];
									else
										Stk[A + 3] = Index;
									end
								elseif (Index < Stk[A + 1]) then
									VIP = Inst[3];
								else
									Stk[A + 3] = Index;
								end
							elseif (Enum > 29) then
								Stk[Inst[2]] = Inst[3];
							else
								Env[Inst[3]] = Stk[Inst[2]];
							end
						elseif (Enum <= 32) then
							if (Enum == 31) then
								local NewProto = Proto[Inst[3]];
								local NewUvals;
								local Indexes = {};
								NewUvals = Setmetatable({}, {__index=function(_, Key)
									local Val = Indexes[Key];
									return Val[1][Val[2]];
								end,__newindex=function(_, Key, Value)
									local Val = Indexes[Key];
									Val[1][Val[2]] = Value;
								end});
								for Idx = 1, Inst[4] do
									VIP = VIP + 1;
									local Mvm = Instr[VIP];
									if (Mvm[1] == 49) then
										Indexes[Idx - 1] = {Stk,Mvm[3]};
									else
										Indexes[Idx - 1] = {Upvalues,Mvm[3]};
									end
									Lupvals[#Lupvals + 1] = Indexes;
								end
								Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
							else
								Stk[Inst[2]] = Upvalues[Inst[3]];
							end
						elseif (Enum > 33) then
							Stk[Inst[2]] = Inst[3];
						else
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Top do
								Insert(T, Stk[Idx]);
							end
						end
					elseif (Enum <= 37) then
						if (Enum <= 35) then
							do
								return;
							end
						elseif (Enum > 36) then
							local A = Inst[2];
							local T = Stk[A];
							for Idx = A + 1, Top do
								Insert(T, Stk[Idx]);
							end
						else
							Stk[Inst[2]] = Stk[Inst[3]] % Stk[Inst[4]];
						end
					elseif (Enum <= 39) then
						if (Enum == 38) then
							if not Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							Stk[Inst[2]] = Env[Inst[3]];
						end
					elseif (Enum == 40) then
						local A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
					else
						local A = Inst[2];
						do
							return Unpack(Stk, A, Top);
						end
					end
				elseif (Enum <= 48) then
					if (Enum <= 44) then
						if (Enum <= 42) then
							local A = Inst[2];
							local Index = Stk[A];
							local Step = Stk[A + 2];
							if (Step > 0) then
								if (Index > Stk[A + 1]) then
									VIP = Inst[3];
								else
									Stk[A + 3] = Index;
								end
							elseif (Index < Stk[A + 1]) then
								VIP = Inst[3];
							else
								Stk[A + 3] = Index;
							end
						elseif (Enum == 43) then
							Stk[Inst[2]] = {};
						else
							local A = Inst[2];
							do
								return Stk[A](Unpack(Stk, A + 1, Inst[3]));
							end
						end
					elseif (Enum <= 46) then
						if (Enum == 45) then
							Stk[Inst[2]] = Stk[Inst[3]] % Inst[4];
						else
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
							Top = (Limit + A) - 1;
							local Edx = 0;
							for Idx = A, Top do
								Edx = Edx + 1;
								Stk[Idx] = Results[Edx];
							end
						end
					elseif (Enum == 47) then
						if not Stk[Inst[2]] then
							VIP = VIP + 1;
						else
							VIP = Inst[3];
						end
					else
						local A = Inst[2];
						Stk[A](Unpack(Stk, A + 1, Top));
					end
				elseif (Enum <= 51) then
					if (Enum <= 49) then
						Stk[Inst[2]] = Stk[Inst[3]];
					elseif (Enum == 50) then
						Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
					else
						Stk[Inst[2]] = Stk[Inst[3]] % Stk[Inst[4]];
					end
				elseif (Enum <= 53) then
					if (Enum == 52) then
						do
							return;
						end
					else
						local A = Inst[2];
						Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
					end
				elseif (Enum > 54) then
					Stk[Inst[2]] = Env[Inst[3]];
				else
					Stk[Inst[2]] = Upvalues[Inst[3]];
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!333O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O00612O635F7903113O004F829A8B71B4E99F4987CED236F7AED41703083O007EB1A3BB4586DBA703133O00A871987997AD7B947393F136C973C7E9279C7903053O009C43AD4AA503133O001764E41943E97F1263EF7019A5234320E6184F03073O002654D72976DC46031A3O00AD064F7041A7094E7A4AE7510C2315F744292E17EC51447243AD03053O009E3076427203173O00AFFD77436224F5ADFB7511347CA7EEB82D1B0922F6AFFA03073O009BCB44705613C503163O00AC168A6FAE1521B7A014ED37EF534AE0EB43C914F35403083O009826BD569C20188503183O0012A901F014AF0EF115A95AA615A84DA61FAE51A614AA5CA603043O00269C37C703163O0011F02F24714223AE12FF5A6E2D1260CE4AA57866794103083O0023C81D1C4873149A03143O00604FEB848ED8796D4DE7C3DE832B3126EFC9FAD903073O005479DFB1BFED4C030E3O0094EB029EF36E066795EE5D9DA46A03083O00A1DB36A9C05A305003153O00761816557C1E165473107105245A4B04206B430E2E03043O004529226003173O0078E9958E5D537CE59585390E139A93E53E3B1899F5F22403063O004BDCA3B76A6203173O008D54E3DE6F8A57EFD367D303AA8A39DC11BF9E39CD0BEA03053O00B962DAEB5703113O00FE9D6A77B48EF9926F74C5D1B8CE2531B203063O00CAAB5C4786BE03143O00D97A927DD17D947FDE78F12D9B21C07FD87D907F03043O00E849A14C03183O004AED81150C48E38E140E30BEDA4A540EB4CB47531594881303053O007EDBB9223D03133O00B6599D0B202D22A6BE5DEA51767123A0B75C9803083O00876CAE3E121E179303143O0096E4B07D9E4CFE609EE0FA3ECE08A532F7A4BB7D03083O00A7D6894AAB78CE5303103O00F6DFA76209ADF1DBA36456EEF3DFF52003063O00C7EB90523D9803113O007F5244E07E534FE17C5135B639020FAF7803043O004B6776D9006A3O0012273O00013O0020155O0002001227000100013O002015000100010003001227000200013O002015000200020004001227000300053O0006260003000A000100010004073O000A0001001227000300063O002015000400030007001227000500083O002015000500050009001227000600083O00201500060006000A00061F00073O000100062O00313O00064O00318O00313O00044O00313O00014O00313O00024O00313O00054O0004000800124O0006000900073O001222000A000C3O001222000B000D4O00280009000B00022O0006000A00073O001222000B000E3O001222000C000F4O0028000A000C00022O0006000B00073O001222000C00103O001222000D00114O0028000B000D00022O0006000C00073O001222000D00123O001222000E00134O0028000C000E00022O0006000D00073O001222000E00143O001222000F00154O0028000D000F00022O0006000E00073O001222000F00163O001222001000174O0028000E001000022O0006000F00073O001222001000183O001222001100194O0028000F001100022O0006001000073O0012220011001A3O0012220012001B4O00280010001200022O0006001100073O0012220012001C3O0012220013001D4O00280011001300022O0006001200073O0012220013001E3O0012220014001F4O00280012001400022O0006001300073O001222001400203O001222001500214O00280013001500022O0006001400073O001222001500223O001222001600234O00280014001600022O0006001500073O001222001600243O001222001700254O00280015001700022O0006001600073O001222001700263O001222001800274O00280016001800022O0006001700073O001222001800283O001222001900294O00280017001900022O0006001800073O0012220019002A3O001222001A002B4O00280018001A00022O0006001900073O001222001A002C3O001222001B002D4O00280019001B00022O0006001A00073O001222001B002E3O001222001C002F4O0028001A001C00022O0006001B00073O001222001C00303O001222001D00314O0028001B001D00022O0006001C00073O001222001D00323O001222001E00334O000E001C001E4O002500083O000100121D0008000B4O00233O00013O00013O00023O00026O00F03F026O00704002284O000400025O001222000300014O000B00045O001222000500013O00042A0003002300012O003600076O0006000800024O0036000900014O0036000A00024O0036000B00034O0036000C00044O0006000D6O0006000E00063O002013000F000600012O000E000C000F4O001A000B3O00022O0036000C00034O0036000D00044O0006000E00013O00201B000F000600012O000B001000014O0033000F000F0010001001000F0001000F00201B0010000600012O000B001100014O00330010001000110010010010000100100020130010001000012O000E000D00104O0011000C6O001A000A3O000200202D000A000A00022O00080009000A4O000300073O000100042O0003000500012O0036000300054O0006000400024O0009000300044O002900036O00233O00017O00", GetFEnv(), ...);