local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33)if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47)local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59)local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...)local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=42) then if (v86<=20) then if (v86<=9) then if (v86<=4) then if (v86<=1) then if (v86>0) then v83[v85[2]]= #v83[v85[3]];else v83[v85[2]]=v83[v85[3]];end elseif (v86<=2) then local v117=v85[2];do return v83[v117](v13(v83,v117 + 1 ,v85[3]));end elseif (v86==3) then local v222=v85[2];v83[v222]=v83[v222](v13(v83,v222 + 1 ,v78));else local v224=v85[2];do return v83[v224](v13(v83,v224 + 1 ,v85[3]));end end elseif (v86<=6) then if (v86>5) then v83[v85[2]]=v83[v85[3]] -v85[4] ;else v83[v85[2]]=v83[v85[3]][v83[v85[4]]];end elseif (v86<=7) then local v121=v85[2];local v122=v83[v121];local v123=v83[v121 + 2 ];if (v123>0) then if (v122>v83[v121 + 1 ]) then v77=v85[3];else v83[v121 + 3 ]=v122;end elseif (v122<v83[v121 + 1 ]) then v77=v85[3];else v83[v121 + 3 ]=v122;end elseif (v86>8) then local v225=v85[2];local v226=v83[v225 + 2 ];local v227=v83[v225] + v226 ;v83[v225]=v227;if (v226>0) then if (v227<=v83[v225 + 1 ]) then v77=v85[3];v83[v225 + 3 ]=v227;end elseif (v227>=v83[v225 + 1 ]) then v77=v85[3];v83[v225 + 3 ]=v227;end else local v229=v85[2];v83[v229]=v83[v229](v13(v83,v229 + 1 ,v85[3]));end elseif (v86<=14) then if (v86<=11) then if (v86==10) then v83[v85[2]]={};elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=12) then do return v83[v85[2]];end elseif (v86>13) then v83[v85[2]]=v29(v74[v85[3]],nil,v59);elseif  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=17) then if (v86<=15) then v83[v85[2]]=v59[v85[3]];elseif (v86>16) then local v233=v85[2];local v234=v83[v233 + 2 ];local v235=v83[v233] + v234 ;v83[v233]=v235;if (v234>0) then if (v235<=v83[v233 + 1 ]) then v77=v85[3];v83[v233 + 3 ]=v235;end elseif (v235>=v83[v233 + 1 ]) then v77=v85[3];v83[v233 + 3 ]=v235;end else local v237=v85[3];local v238=v83[v237];for v302=v237 + 1 ,v85[4] do v238=v238   .. v83[v302] ;end v83[v85[2]]=v238;end elseif (v86<=18) then local v127=v85[2];local v128,v129=v76(v83[v127](v83[v127 + 1 ]));v78=(v129 + v127) -1 ;local v130=0;for v188=v127,v78 do v130=v130 + 1 ;v83[v188]=v128[v130];end elseif (v86>19) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else local v240=v85[2];local v241=v85[4];local v242=v240 + 2 ;local v243={v83[v240](v83[v240 + 1 ],v83[v242])};for v303=1,v241 do v83[v242 + v303 ]=v243[v303];end local v244=v243[1];if v244 then v83[v242]=v244;v77=v85[3];else v77=v77 + 1 ;end end elseif (v86<=31) then if (v86<=25) then if (v86<=22) then if (v86==21) then local v131=v85[2];local v132=v85[4];local v133=v131 + 2 ;local v134={v83[v131](v83[v131 + 1 ],v83[v133])};for v191=1,v132 do v83[v133 + v191 ]=v134[v191];end local v135=v134[1];if v135 then v83[v133]=v135;v77=v85[3];else v77=v77 + 1 ;end else v83[v85[2]]=v83[v85[3]] + v85[4] ;end elseif (v86<=23) then v83[v85[2]]=v58[v85[3]];elseif (v86==24) then if (v85[2]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v83[v85[3]];end elseif (v86<=28) then if (v86<=26) then do return;end elseif (v86>27) then v77=v85[3];else v83[v85[2]]=v58[v85[3]];end elseif (v86<=29) then local v139=v85[2];local v140,v141=v76(v83[v139](v13(v83,v139 + 1 ,v78)));v78=(v141 + v139) -1 ;local v142=0;for v194=v139,v78 do v142=v142 + 1 ;v83[v194]=v140[v142];end elseif (v86>30) then local v252=v85[2];do return v13(v83,v252,v78);end else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86<=36) then if (v86<=33) then if (v86==32) then v83[v85[2]]=v29(v74[v85[3]],nil,v59);else local v144=v85[2];local v145,v146=v76(v83[v144](v13(v83,v144 + 1 ,v85[3])));v78=(v146 + v144) -1 ;local v147=0;for v197=v144,v78 do v147=v147 + 1 ;v83[v197]=v145[v147];end end elseif (v86<=34) then local v148=v74[v85[3]];local v149;local v150={};v149=v10({},{__index=function(v200,v201)local v202=v150[v201];return v202[1][v202[2]];end,__newindex=function(v203,v204,v205)local v206=v150[v204];v206[1][v206[2]]=v205;end});for v208=1,v85[4] do v77=v77 + 1 ;local v209=v73[v77];if (v209[1]==25) then v150[v208-1 ]={v83,v209[3]};else v150[v208-1 ]={v58,v209[3]};end v82[ #v82 + 1 ]=v150;end v83[v85[2]]=v29(v148,v149,v59);elseif (v86>35) then local v254=v85[2];v83[v254](v13(v83,v254 + 1 ,v85[3]));else local v255=v85[2];do return v13(v83,v255,v255 + v85[3] );end end elseif (v86<=39) then if (v86<=37) then local v152=v85[2];v83[v152](v13(v83,v152 + 1 ,v85[3]));elseif (v86>38) then for v308=v85[2],v85[3] do v83[v308]=nil;end elseif (v85[2]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=40) then v83[v85[2]]=v85[3];elseif (v86>41) then local v256=v74[v85[3]];local v257;local v258={};v257=v10({},{__index=function(v310,v311)local v312=v258[v311];return v312[1][v312[2]];end,__newindex=function(v313,v314,v315)local v316=v258[v314];v316[1][v316[2]]=v315;end});for v318=1,v85[4] do v77=v77 + 1 ;local v319=v73[v77];if (v319[1]==25) then v258[v318-1 ]={v83,v319[3]};else v258[v318-1 ]={v58,v319[3]};end v82[ #v82 + 1 ]=v258;end v83[v85[2]]=v29(v256,v257,v59);else v59[v85[3]]=v83[v85[2]];end elseif (v86<=64) then if (v86<=53) then if (v86<=47) then if (v86<=44) then if (v86==43) then local v155=v85[2];local v156={v83[v155](v83[v155 + 1 ])};local v157=0;for v211=v155,v85[4] do v157=v157 + 1 ;v83[v211]=v156[v157];end else local v158=v85[2];v83[v158](v13(v83,v158 + 1 ,v78));end elseif (v86<=45) then v83[v85[2]]=v83[v85[3]][v85[4]];elseif (v86==46) then local v262=v85[2];do return v13(v83,v262,v78);end elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=50) then if (v86<=48) then v83[v85[2]]();elseif (v86==49) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v265=v85[2];v83[v265]=v83[v265](v13(v83,v265 + 1 ,v78));end elseif (v86<=51) then v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;elseif (v86>52) then local v267=v85[2];v83[v267]=v83[v267](v13(v83,v267 + 1 ,v85[3]));else local v269=v85[2];local v270,v271=v76(v83[v269](v13(v83,v269 + 1 ,v78)));v78=(v271 + v269) -1 ;local v272=0;for v321=v269,v78 do v272=v272 + 1 ;v83[v321]=v270[v272];end end elseif (v86<=58) then if (v86<=55) then if (v86>54) then v83[v85[2]]=v83[v85[3]][v83[v85[4]]];else v83[v85[2]]=v59[v85[3]];end elseif (v86<=56) then v83[v85[2]]=v83[v85[3]]%v85[4] ;elseif (v86>57) then v59[v85[3]]=v83[v85[2]];else do return;end end elseif (v86<=61) then if (v86<=59) then local v167=v85[2];local v168,v169=v76(v83[v167](v83[v167 + 1 ]));v78=(v169 + v167) -1 ;local v170=0;for v214=v167,v78 do v170=v170 + 1 ;v83[v214]=v168[v170];end elseif (v86==60) then v83[v85[2]]=v83[v85[3]] + v85[4] ;else local v276=v85[2];v83[v276](v13(v83,v276 + 1 ,v78));end elseif (v86<=62) then local v171=v85[2];local v172=v83[v85[3]];v83[v171 + 1 ]=v172;v83[v171]=v172[v85[4]];elseif (v86>63) then local v277=v85[2];v83[v277]=v83[v277](v83[v277 + 1 ]);else local v279=v85[2];v83[v279]=v83[v279](v83[v279 + 1 ]);end elseif (v86<=75) then if (v86<=69) then if (v86<=66) then if (v86>65) then v83[v85[2]]=v85[3]~=0 ;else v83[v85[2]][v83[v85[3]]]=v83[v85[4]];end elseif (v86<=67) then v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;elseif (v86==68) then v83[v85[2]]=v85[3]~=0 ;else v83[v85[2]][v83[v85[3]]]=v83[v85[4]];end elseif (v86<=72) then if (v86<=70) then v83[v85[2]]();elseif (v86>71) then v83[v85[2]]={};else v83[v85[2]]= #v83[v85[3]];end elseif (v86<=73) then local v180=v85[2];local v181={v83[v180](v83[v180 + 1 ])};local v182=0;for v217=v180,v85[4] do v182=v182 + 1 ;v83[v217]=v181[v182];end elseif (v86>74) then local v286=v85[3];local v287=v83[v286];for v324=v286 + 1 ,v85[4] do v287=v287   .. v83[v324] ;end v83[v85[2]]=v287;elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=80) then if (v86<=77) then if (v86>76) then v83[v85[2]]=v85[3] + v83[v85[4]] ;else for v220=v85[2],v85[3] do v83[v220]=nil;end end elseif (v86<=78) then v83[v85[2]]=v83[v85[3]] -v85[4] ;elseif (v86>79) then local v289=v85[2];local v290=v83[v289];local v291=v83[v289 + 2 ];if (v291>0) then if (v290>v83[v289 + 1 ]) then v77=v85[3];else v83[v289 + 3 ]=v290;end elseif (v290<v83[v289 + 1 ]) then v77=v85[3];else v83[v289 + 3 ]=v290;end else do return v83[v85[2]];end end elseif (v86<=83) then if (v86<=81) then v83[v85[2]]=v85[3];elseif (v86==82) then local v292=v85[2];local v293,v294=v76(v83[v292](v13(v83,v292 + 1 ,v85[3])));v78=(v294 + v292) -1 ;local v295=0;for v325=v292,v78 do v295=v295 + 1 ;v83[v325]=v293[v295];end else v83[v85[2]]=v85[3] + v83[v85[4]] ;end elseif (v86<=84) then v77=v85[3];elseif (v86>85) then local v297=v85[2];local v298=v83[v85[3]];v83[v297 + 1 ]=v298;v83[v297]=v298[v85[4]];elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!303O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E73657274030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403463O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F646732697567657367682F7266736476333234742F6D61696E2F6532337632652E6C756103043O0072616E6403043O006D61746803063O0072616E646F6D028O00025O00E06F402O033O00706C6E03073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203043O004E616D6503093O006D616B655F72616E6403043O006C652O7403013O007903093O004E616D655F4D656E75030C3O008521021E66A7FE903240782003073O00CB44705613C5DE03013O005D03023O00626C03063O007072696E745F03043O0066696E64026O00F03F03043O004B69636B033D3O00452O726F7220636F64653A20474159200A5B204D6164652077697468202O3F2062792052616E676523382O393820616E64205265796E2337353235205D030A3O0006F41BBC6759DC079C7703073O0026BD569C201885030A3O004765745365727669636503113O0074F947AB4FFF56B343F864B349EE56A04303043O00269C37C7031B3O0044656661756C744368617453797374656D436861744576656E747303113O005361794D652O7361676552657175657374030A3O00466972655365727665722O033O0062A47103083O0023C81D1C4873149A03493O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F646732697567657367682F7266736476333234742F6D61696E2F6D444E6168323368642E6C7561007F3O0012363O00013O00202D5O0002001236000100013O00202D000100010003001236000200013O00202D000200020004001236000300053O0006140003000A000100010004543O000A0001001236000300063O00202D000400030007001236000500083O00202D000500050009001236000600083O00202D00060006000A00062A00073O000100062O00193O00064O00198O00193O00044O00193O00014O00193O00024O00193O00053O0012360008000B3O0012360009000C3O00205600090009000D001228000B000E4O0044000C00014O00520009000C4O003200083O00022O0030000800010001001236000800103O00202D000800080011001228000900123O001228000A00134O00080008000A00020012290008000F3O0012360008000C3O00202D00080008001500202D00080008001600202D00080008001700202D000800080018001229000800143O00020E000800013O001229000800193O0012280008001B3O0012290008001A6O000800073O0012280009001D3O001228000A001E4O00080008000A00020012360009001A3O001228000A001F4O001000080008000A0012290008001C3O001236000800193O001236000900204O0040000800020002001229000800203O001236000800193O001236000900214O0040000800020002001229000800213O001236000800083O00202D000800080022001236000900203O001236000A00143O001236000B000F4O0010000A000A000B2O00080008000A000200064A0008006D00013O0004543O006D0001001228000800124O00270009000A3O00265500080052000100230004543O00520001001236000B000C3O00202D000B000B001500202D000B000B0016002056000B000B0024001228000D00254O0025000B000D00010004543O007E000100265500080049000100120004543O004900014O000B00073O001228000C00263O001228000D00274O0008000B000D00024O0009000B3O001236000B000C3O002056000B000B00284O000D00073O001228000E00293O001228000F002A4O0052000D000F4O0032000B3O000200202D000B000B002B00202D000B000B002C002056000B000B002D4O000D00096O000E00073O001228000F002E3O0012280010002F4O0052000E00104O0032000B3O00024O000A000B3O001228000800233O0004543O004900010004543O007E0001001236000800083O00202D000800080022001236000900213O001236000A00143O001236000B000F4O0010000A000A000B2O00080008000A000200064A0008007E00013O0004543O007E00010012360008000B3O0012360009000C3O00205600090009000D001228000B00304O0044000C00014O00520009000C4O003200083O00022O00300008000100012O001A3O00013O00023O00023O00026O00F03F026O00704002284O004800025O001228000300014O000100045O001228000500013O0004070003002300012O001700078O000800024O0017000900014O0017000A00024O0017000B00034O0017000C00046O000D8O000E00063O00203C000F000600012O0052000C000F4O0032000B3O00022O0017000C00034O0017000D00046O000E00013O002006000F000600012O0001001000014O0033000F000F001000104D000F0001000F0020060010000600012O0001001100014O003300100010001100104D00100001001000203C0010001000012O0052000D00104O001D000C6O0032000A3O0002002038000A000A00022O00120009000A4O002C00073O00010004090003000500012O0017000300056O000400024O0002000300044O001F00036O001A3O00017O00053O00028O0003043O00612O723103063O0069706169727303043O0072616E64026O00F03F01173O001228000100013O000E2600010011000100010004543O001100012O004800025O001229000200023O001236000200036O00036O002B0002000200040004543O000E0001001236000700024O003700083O0005001236000900044O00100008000800092O004100070005000800061300020009000100020004543O00090001001228000100053O00265500010001000100050004543O00010001001236000200024O000C000200023O0004543O000100012O001A3O00017O00",v9(),...);