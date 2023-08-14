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
				if (Enum <= 26) then
					if (Enum <= 12) then
						if (Enum <= 5) then
							if (Enum <= 2) then
								if (Enum <= 0) then
									do
										return;
									end
								elseif (Enum == 1) then
									do
										return;
									end
								else
									local A = Inst[2];
									do
										return Unpack(Stk, A, Top);
									end
								end
							elseif (Enum <= 3) then
								Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
							elseif (Enum > 4) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
							else
								VIP = Inst[3];
							end
						elseif (Enum <= 8) then
							if (Enum <= 6) then
								Stk[Inst[2]] = Inst[3];
							elseif (Enum == 7) then
								Stk[Inst[2]] = Env[Inst[3]];
							else
								Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];
							end
						elseif (Enum <= 10) then
							if (Enum > 9) then
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Top do
									Insert(T, Stk[Idx]);
								end
							else
								Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
							end
						elseif (Enum == 11) then
							local A = Inst[2];
							local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
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
					elseif (Enum <= 19) then
						if (Enum <= 15) then
							if (Enum <= 13) then
								if not Stk[Inst[2]] then
									VIP = VIP + 1;
								else
									VIP = Inst[3];
								end
							elseif (Enum == 14) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
							else
								local A = Inst[2];
								local T = Stk[A];
								for Idx = A + 1, Top do
									Insert(T, Stk[Idx]);
								end
							end
						elseif (Enum <= 17) then
							if (Enum > 16) then
								Stk[Inst[2]] = Stk[Inst[3]] + Inst[4];
							else
								Stk[Inst[2]] = Stk[Inst[3]] % Inst[4];
							end
						elseif (Enum == 18) then
							local A = Inst[2];
							do
								return Unpack(Stk, A, Top);
							end
						else
							Stk[Inst[2]] = Inst[3];
						end
					elseif (Enum <= 22) then
						if (Enum <= 20) then
							VIP = Inst[3];
						elseif (Enum > 21) then
							Stk[Inst[2]] = #Stk[Inst[3]];
						else
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
						end
					elseif (Enum <= 24) then
						if (Enum == 23) then
							local A = Inst[2];
							do
								return Stk[A](Unpack(Stk, A + 1, Inst[3]));
							end
						else
							Stk[Inst[2]] = Env[Inst[3]];
						end
					elseif (Enum > 25) then
						Stk[Inst[2]] = Stk[Inst[3]] % Stk[Inst[4]];
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
				elseif (Enum <= 39) then
					if (Enum <= 32) then
						if (Enum <= 29) then
							if (Enum <= 27) then
								local A = Inst[2];
								Stk[A](Unpack(Stk, A + 1, Top));
							elseif (Enum == 28) then
								local A = Inst[2];
								Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3]));
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
						elseif (Enum <= 30) then
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
								if (Mvm[1] == 37) then
									Indexes[Idx - 1] = {Stk,Mvm[3]};
								else
									Indexes[Idx - 1] = {Upvalues,Mvm[3]};
								end
								Lupvals[#Lupvals + 1] = Indexes;
							end
							Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
						elseif (Enum == 31) then
							Stk[Inst[2]] = #Stk[Inst[3]];
						else
							Stk[Inst[2]] = Upvalues[Inst[3]];
						end
					elseif (Enum <= 35) then
						if (Enum <= 33) then
							Stk[Inst[2]] = Stk[Inst[3]];
						elseif (Enum > 34) then
							local A = Inst[2];
							Stk[A] = Stk[A](Unpack(Stk, A + 1, Top));
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
					elseif (Enum <= 37) then
						if (Enum == 36) then
							if not Stk[Inst[2]] then
								VIP = VIP + 1;
							else
								VIP = Inst[3];
							end
						else
							Stk[Inst[2]] = Stk[Inst[3]];
						end
					elseif (Enum > 38) then
						Env[Inst[3]] = Stk[Inst[2]];
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
				elseif (Enum <= 46) then
					if (Enum <= 42) then
						if (Enum <= 40) then
							Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];
						elseif (Enum > 41) then
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
								if (Mvm[1] == 37) then
									Indexes[Idx - 1] = {Stk,Mvm[3]};
								else
									Indexes[Idx - 1] = {Upvalues,Mvm[3]};
								end
								Lupvals[#Lupvals + 1] = Indexes;
							end
							Stk[Inst[2]] = Wrap(NewProto, NewUvals, Env);
						else
							Stk[Inst[2]] = Stk[Inst[3]][Inst[4]];
						end
					elseif (Enum <= 44) then
						if (Enum > 43) then
							Stk[Inst[2]] = {};
						else
							local A = Inst[2];
							Stk[A](Unpack(Stk, A + 1, Top));
						end
					elseif (Enum == 45) then
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					else
						local A = Inst[2];
						do
							return Stk[A](Unpack(Stk, A + 1, Inst[3]));
						end
					end
				elseif (Enum <= 49) then
					if (Enum <= 47) then
						Env[Inst[3]] = Stk[Inst[2]];
					elseif (Enum > 48) then
						Stk[Inst[2]] = Stk[Inst[3]] % Stk[Inst[4]];
					else
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
					end
				elseif (Enum <= 51) then
					if (Enum > 50) then
						local A = Inst[2];
						local Results, Limit = _R(Stk[A](Stk[A + 1]));
						Top = (Limit + A) - 1;
						local Edx = 0;
						for Idx = A, Top do
							Edx = Edx + 1;
							Stk[Idx] = Results[Edx];
						end
					else
						Stk[Inst[2]] = Upvalues[Inst[3]];
					end
				elseif (Enum > 52) then
					Stk[Inst[2]] = {};
				else
					Stk[Inst[2]] = Stk[Inst[3]] % Inst[4];
				end
				VIP = VIP + 1;
			end
		end;
	end
	return Wrap(Deserialize(), {}, vmenv)(...);
end
VMCall("LOL!3D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O00612O635F7903113O0080908275B2E995468695D62CF5AAD20DD803083O007EB1A3BB4586DBA703133O00779F7F96AE7295739CAA2ED82E9CFE36C97B9603053O009C43AD4AA503133O0065E71A46E9731F60E0112FB33F4331A31847E503073O002654D72976DC46031A3O0003407B40AD094F7A4AA649173813F959021D1EFB42177042AF2O03053O009E3076427203173O00FF72436527F2ABFD74413771AAF9BE37193D4CF4A8FF7503073O009BCB44705613C503163O00128D61A5122DBCAA1E8F06FD536BD7FD55D822DE4F6C03083O009826BD569C20188503183O00A802F111AE04FE10AF02AA47AF03BD47A505A147AE01AC4703043O00269C37C703163O00FA252E704A25AD17F92A5B3A1675EE77A1707932422603083O0023C81D1C4873149A03143O004DE9858ADC796140EB89CD8C22331C8081C7A87803073O005479DFB1BFED4C030E3O00EE069DF769046696EF03C2F43E0003083O00A1DB36A9C05A305003153O001A135470101554711F1B3320485109214C60012B4203043O004529226003173O00EF968153557AEB9A8158312784E5873836128FE6E12F2C03063O004BDCA3B76A6203173O0056ECD2628151EFDE6F8908BB9B36D707A98E22D716B3DB03053O00B962DAEB5703113O009F6A71B68CFA986574B5FDA5D9393EF08A03063O00CAAB5C4786BE03143O0078927FD9709579DB7F901C893AC92DDB79957DDB03043O00E849A14C03183O00EF8F1A0A4FED81150B4D95DC415517ABD6505810B0F6130C03053O007EDBB9223D03133O005D9B0D272C24A6B2559F7A7D7A78A7B45C9E0803083O00876CAE3E121E1793031B3O00E5BE7B994EFC6595E5B80BC711853ACBBAEC389948FF60F8A3FE3D03083O00A7D6894AAB78CE5303143O00DAA26B0AADF3DBA36B0BEBB38EE0395CC8B5D9A703063O00C7EB90523D9803103O005642EE7B5343EF7B5440B23D5342BC3903043O004B6776D903183O0091022142EF4C9600291FB012CB51621FB012CB516246E14D03063O007EA7341074D903113O009C7B72D9E14DA5907976A3BB0BF9D1387303073O009CA84E40E0D47903113O0054BCF19F53B8F69855B6A8CF15F7A1CA0203043O00AE678EC503123O0007700E607609A90771063E2257F746790F6903073O009836483F58453E031B3O008794BF098294BE0D8197CA59DACDFD63F1C3E14EDFC5BC68D1C5E303043O003CB4A48E007E3O0012183O00013O0020295O0002001218000100013O002029000100010003001218000200013O002029000200020004001218000300053O0006240003000A000100010004143O000A0001001218000300063O002029000400030007001218000500083O002029000500050009001218000600083O00202900060006000A00061E00073O000100062O00253O00064O00258O00253O00044O00253O00014O00253O00024O00253O00054O002C000800144O0021000900073O001213000A000C3O001213000B000D4O000E0009000B00022O0021000A00073O001213000B000E3O001213000C000F4O000E000A000C00022O0021000B00073O001213000C00103O001213000D00114O000E000B000D00022O0021000C00073O001213000D00123O001213000E00134O000E000C000E00022O0021000D00073O001213000E00143O001213000F00154O000E000D000F00022O0021000E00073O001213000F00163O001213001000174O000E000E001000022O0021000F00073O001213001000183O001213001100194O000E000F001100022O0021001000073O0012130011001A3O0012130012001B4O000E0010001200022O0021001100073O0012130012001C3O0012130013001D4O000E0011001300022O0021001200073O0012130013001E3O0012130014001F4O000E0012001400022O0021001300073O001213001400203O001213001500214O000E0013001500022O0021001400073O001213001500223O001213001600234O000E0014001600022O0021001500073O001213001600243O001213001700254O000E0015001700022O0021001600073O001213001700263O001213001800274O000E0016001800022O0021001700073O001213001800283O001213001900294O000E0017001900022O0021001800073O0012130019002A3O001213001A002B4O000E0018001A00022O0021001900073O001213001A002C3O001213001B002D4O000E0019001B00022O0021001A00073O001213001B002E3O001213001C002F4O000E001A001C00022O0021001B00073O001213001C00303O001213001D00314O000E001B001D00022O0021001C00073O001213001D00323O001213001E00334O000E001C001E00022O0021001D00073O001213001E00343O001213001F00354O000E001D001F00022O0021001E00073O001213001F00363O001213002000374O000E001E002000022O0021001F00073O001213002000383O001213002100394O000E001F002100022O0021002000073O0012130021003A3O0012130022003B4O000E0020002200022O0021002100073O0012130022003C3O0012130023003D4O002D002100234O000A00083O000100122F0008000B4O00013O00013O00013O00023O00026O00F03F026O00704002264O002C00025O001213000300014O001600045O001213000500013O0004150003002100012O003200076O0021000800024O0032000900014O0032000A00024O0032000B00034O0032000C00044O0021000D6O0021000E00063O002011000F000600012O002D000C000F4O0005000B3O00022O0032000C00034O0032000D00044O0021000E00014O0016000F00014O001A000F0006000F001008000F0001000F2O0016001000014O001A0010000600100010080010000100100020110010001000012O002D000D00104O0019000C6O0005000A3O0002002034000A000A00022O00330009000A4O001B00073O00010004220003000500012O0032000300054O0021000400024O0017000300044O001200036O00013O00017O00", GetFEnv(), ...);
