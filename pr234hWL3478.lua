
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33)if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47)local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59)local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...)local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=15) then if (v86<=7) then if (v86<=3) then if (v86<=1) then if (v86>0) then local v114=v85[2];local v115,v116=v76(v83[v114](v13(v83,v114 + 1 ,v78)));v78=(v116 + v114) -1 ;local v117=0;for v200=v114,v78 do v117=v117 + 1 ;v83[v200]=v115[v117];end else local v118=v85[2];local v119=v83[v118];for v203=v118 + 1 ,v78 do v7(v119,v83[v203]);end end elseif (v86>2) then local v120=v85[2];do return v13(v83,v120,v78);end else do return;end end elseif (v86<=5) then if (v86>4) then v83[v85[2]]=v83[v85[3]];else local v123=v85[2];local v124,v125=v76(v83[v123](v83[v123 + 1 ]));v78=(v125 + v123) -1 ;local v126=0;for v204=v123,v78 do v126=v126 + 1 ;v83[v204]=v124[v126];end end elseif (v86>6) then local v127=v74[v85[3]];local v128;local v129={};v128=v10({},{__index=function(v207,v208)local v209=v129[v208];return v209[1][v209[2]];end,__newindex=function(v210,v211,v212)local v213=v129[v211];v213[1][v213[2]]=v212;end});for v215=1,v85[4] do v77=v77 + 1 ;local v216=v73[v77];if (v216[1]==5) then v129[v215-1 ]={v83,v216[3]};else v129[v215-1 ]={v58,v216[3]};end v82[ #v82 + 1 ]=v129;end v83[v85[2]]=v29(v127,v128,v59);else v83[v85[2]]=v85[3];end elseif (v86<=11) then if (v86<=9) then if (v86==8) then local v133;local v134,v135;local v136;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v134,v135=v76(v83[v136](v13(v83,v136 + 1 ,v85[3])));v78=(v135 + v136) -1 ;v133=0;for v218=v136,v78 do v133=v133 + 1 ;v83[v218]=v134[v133];end v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v83[v136]=v83[v136](v13(v83,v136 + 1 ,v78));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v85[4] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] -v85[4] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v134,v135=v76(v83[v136](v13(v83,v136 + 1 ,v85[3])));v78=(v135 + v136) -1 ;v133=0;for v221=v136,v78 do v133=v133 + 1 ;v83[v221]=v134[v133];end v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v134,v135=v76(v83[v136](v13(v83,v136 + 1 ,v78)));v78=(v135 + v136) -1 ;v133=0;for v224=v136,v78 do v133=v133 + 1 ;v83[v224]=v134[v133];end v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v83[v136]=v83[v136](v13(v83,v136 + 1 ,v78));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]%v85[4] ;v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v134,v135=v76(v83[v136](v83[v136 + 1 ]));v78=(v135 + v136) -1 ;v133=0;for v227=v136,v78 do v133=v133 + 1 ;v83[v227]=v134[v133];end v77=v77 + 1 ;v85=v73[v77];v136=v85[2];v83[v136](v13(v83,v136 + 1 ,v78));elseif  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==10) then local v143;local v144;local v145,v146;local v147;v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v147=v85[2];v83[v147]=v83[v147](v13(v83,v147 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v147=v85[2];v145,v146=v76(v83[v147](v13(v83,v147 + 1 ,v85[3])));v78=(v146 + v147) -1 ;v144=0;for v230=v147,v78 do v144=v144 + 1 ;v83[v230]=v145[v144];end v77=v77 + 1 ;v85=v73[v77];v147=v85[2];v143=v83[v147];for v233=v147 + 1 ,v78 do v7(v143,v83[v233]);end else v59[v85[3]]=v83[v85[2]];end elseif (v86<=13) then if (v86>12) then local v156=v85[2];local v157=v83[v156];local v158=v83[v156 + 2 ];if (v158>0) then if (v157>v83[v156 + 1 ]) then v77=v85[3];else v83[v156 + 3 ]=v157;end elseif (v157<v83[v156 + 1 ]) then v77=v85[3];else v83[v156 + 3 ]=v157;end else v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;end elseif (v86>14) then local v160=v85[2];local v161=v83[v160 + 2 ];local v162=v83[v160] + v161 ;v83[v160]=v162;if (v161>0) then if (v162<=v83[v160 + 1 ]) then v77=v85[3];v83[v160 + 3 ]=v162;end elseif (v162>=v83[v160 + 1 ]) then v77=v85[3];v83[v160 + 3 ]=v162;end else v83[v85[2]]= #v83[v85[3]];end elseif (v86<=23) then if (v86<=19) then if (v86<=17) then if (v86==16) then local v165=v85[2];v83[v165](v13(v83,v165 + 1 ,v78));else local v166=v85[2];v83[v166]=v83[v166](v13(v83,v166 + 1 ,v85[3]));end elseif (v86==18) then v83[v85[2]]=v58[v85[3]];else v83[v85[2]]=v59[v85[3]];end elseif (v86<=21) then if (v86>20) then local v172=v85[2];v83[v172]=v83[v172](v13(v83,v172 + 1 ,v78));else v83[v85[2]]=v83[v85[3]] -v85[4] ;end elseif (v86==22) then v83[v85[2]]=v85[3] + v83[v85[4]] ;else local v176=v85[2];local v177,v178=v76(v83[v176](v13(v83,v176 + 1 ,v85[3])));v78=(v178 + v176) -1 ;local v179=0;for v234=v176,v78 do v179=v179 + 1 ;v83[v234]=v177[v179];end end elseif (v86<=27) then if (v86<=25) then if (v86==24) then local v180=v85[2];do return v83[v180](v13(v83,v180 + 1 ,v85[3]));end else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86>26) then v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]={};end elseif (v86<=29) then if (v86==28) then v77=v85[3];else v83[v85[2]]=v83[v85[3]] + v85[4] ;end elseif (v86>30) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v191;local v192;local v193;v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v193=v85[2];v192=v83[v193];v191=v83[v193 + 2 ];if (v191>0) then if (v192>v83[v193 + 1 ]) then v77=v85[3];else v83[v193 + 3 ]=v192;end elseif (v192<v83[v193 + 1 ]) then v77=v85[3];else v83[v193 + 3 ]=v192;end end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!0F3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O00612O635F7903113O0013D8D0CA30F5B2964D88938F77B4E3904803083O007EB1A3BB4586DBA7031A3O00E522D72BC2F537F226C0EE229F7A94AF709B7397AF7A94729DA403053O009C43AD4AA500223O00121B3O00013O00206O000200122O000100013O00202O00010001000300122O000200013O00202O00020002000400122O000300053O00062O0003000A0001000100041C3O000A0001001213000300063O00201F000400030007001213000500083O00201F000500050009001213000600083O00201F00060006000A00060700073O000100062O00053O00064O00058O00053O00044O00053O00014O00053O00024O00053O00054O000A000800016O000900073O00122O000A000C3O00122O000B000D6O0009000B00024O000A00073O00122O000B000E3O00122O000C000F6O000A000C6O00083O000100120B0008000B4O00023O00013O00013O00023O00026O00F03F026O00704002284O001E00025O00122O000300016O00045O00122O000500013O00042O0003002300012O001200076O0008000800026O000900016O000A00026O000B00036O000C00046O000D8O000E00063O00202O000F000600014O000C000F6O000B3O00024O000C00036O000D00046O000E00013O00202O000F000600014O001000016O000F000F001000102O000F0001000F00202O0010000600014O001100016O00100010001100102O00100001001000202O0010001000014O000D00106O000C8O000A3O000200202O000A000A00024O0009000A6O00073O000100040F0003000500012O0012000300054O0005000400024O0018000300044O000300036O00023O00017O00",v9(),...);
