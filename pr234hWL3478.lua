local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33)if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47)local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59)local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...)local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=15) then if (v86<=7) then if (v86<=3) then if (v86<=1) then if (v86==0) then local v114=v85[2];v83[v114]=v83[v114](v13(v83,v114 + 1 ,v85[3]));else v83[v85[2]]=v58[v85[3]];end elseif (v86==2) then local v118=v85[2];v83[v118](v13(v83,v118 + 1 ,v78));else local v119=v85[2];local v120,v121=v76(v83[v119](v13(v83,v119 + 1 ,v78)));v78=(v121 + v119) -1 ;local v122=0;for v202=v119,v78 do v122=v122 + 1 ;v83[v202]=v120[v122];end end elseif (v86<=5) then if (v86>4) then v83[v85[2]]= #v83[v85[3]];else do return;end end elseif (v86>6) then local v124=v85[2];local v125=v83[v124 + 2 ];local v126=v83[v124] + v125 ;v83[v124]=v126;if (v125>0) then if (v126<=v83[v124 + 1 ]) then v77=v85[3];v83[v124 + 3 ]=v126;end elseif (v126>=v83[v124 + 1 ]) then v77=v85[3];v83[v124 + 3 ]=v126;end else v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=11) then if (v86<=9) then if (v86==8) then local v130=v85[2];local v131,v132=v76(v83[v130](v83[v130 + 1 ]));v78=(v132 + v130) -1 ;local v133=0;for v205=v130,v78 do v133=v133 + 1 ;v83[v205]=v131[v133];end else v77=v85[3];end elseif (v86==10) then v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;else local v136=v85[2];do return v83[v136](v13(v83,v136 + 1 ,v85[3]));end end elseif (v86<=13) then if (v86==12) then local v137=v74[v85[3]];local v138;local v139={};v138=v10({},{__index=function(v208,v209)local v210=v139[v209];return v210[1][v210[2]];end,__newindex=function(v211,v212,v213)local v214=v139[v212];v214[1][v214[2]]=v213;end});for v216=1,v85[4] do v77=v77 + 1 ;local v217=v73[v77];if (v217[1]==22) then v139[v216-1 ]={v83,v217[3]};else v139[v216-1 ]={v58,v217[3]};end v82[ #v82 + 1 ]=v139;end v83[v85[2]]=v29(v137,v138,v59);else v83[v85[2]]={};end elseif (v86==14) then v83[v85[2]]=v59[v85[3]];else local v144;v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v144=v85[2];v83[v144]=v83[v144](v13(v83,v144 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];end elseif (v86<=23) then if (v86<=19) then if (v86<=17) then if (v86>16) then local v151=v85[2];v83[v151]=v83[v151](v13(v83,v151 + 1 ,v78));else local v153=v85[2];do return v13(v83,v153,v78);end end elseif (v86>18) then local v154;local v155,v156;local v157;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v155,v156=v76(v83[v157](v13(v83,v157 + 1 ,v85[3])));v78=(v156 + v157) -1 ;v154=0;for v219=v157,v78 do v154=v154 + 1 ;v83[v219]=v155[v154];end v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v83[v157]=v83[v157](v13(v83,v157 + 1 ,v78));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]%v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3] + v83[v85[4]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]] + v85[4] ;v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v155,v156=v76(v83[v157](v13(v83,v157 + 1 ,v85[3])));v78=(v156 + v157) -1 ;v154=0;for v222=v157,v78 do v154=v154 + 1 ;v83[v222]=v155[v154];end v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v155,v156=v76(v83[v157](v13(v83,v157 + 1 ,v78)));v78=(v156 + v157) -1 ;v154=0;for v225=v157,v78 do v154=v154 + 1 ;v83[v225]=v155[v154];end v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v83[v157]=v83[v157](v13(v83,v157 + 1 ,v78));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]]%v85[4] ;v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v155,v156=v76(v83[v157](v83[v157 + 1 ]));v78=(v156 + v157) -1 ;v154=0;for v228=v157,v78 do v154=v154 + 1 ;v83[v228]=v155[v154];end v77=v77 + 1 ;v85=v73[v77];v157=v85[2];v83[v157](v13(v83,v157 + 1 ,v78));else v83[v85[2]]=v85[3];end elseif (v86<=21) then if (v86>20) then local v166=v85[2];local v167,v168=v76(v83[v166](v13(v83,v166 + 1 ,v85[3])));v78=(v168 + v166) -1 ;local v169=0;for v231=v166,v78 do v169=v169 + 1 ;v83[v231]=v167[v169];end else local v170=v85[2];local v171=v83[v170];local v172=v83[v170 + 2 ];if (v172>0) then if (v171>v83[v170 + 1 ]) then v77=v85[3];else v83[v170 + 3 ]=v171;end elseif (v171<v83[v170 + 1 ]) then v77=v85[3];else v83[v170 + 3 ]=v171;end end elseif (v86==22) then v83[v85[2]]=v83[v85[3]];else local v175=v85[2];local v176=v83[v175];for v234=v175 + 1 ,v78 do v7(v176,v83[v234]);end end elseif (v86<=27) then if (v86<=25) then if (v86>24) then v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v85[3] + v83[v85[4]] ;end elseif (v86==26) then v83[v85[2]]=v83[v85[3]] + v85[4] ;else v83[v85[2]]=v83[v85[3]]%v85[4] ;end elseif (v86<=29) then if (v86==28) then local v184;local v185;local v186;v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]= #v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v186=v85[2];v185=v83[v186];v184=v83[v186 + 2 ];if (v184>0) then if (v185>v83[v186 + 1 ]) then v77=v85[3];else v83[v186 + 3 ]=v185;end elseif (v185<v83[v186 + 1 ]) then v77=v85[3];else v83[v186 + 3 ]=v185;end else v59[v85[3]]=v83[v85[2]];end elseif (v86==30) then local v195;v195=v85[2];v83[v195]=v83[v195](v13(v83,v195 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v195=v85[2];v83[v195]=v83[v195](v13(v83,v195 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v195=v85[2];v83[v195]=v83[v195](v13(v83,v195 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];elseif  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!393O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O00612O635F7903113O0080908275B2E995468695D62CF5AAD20DD803083O007EB1A3BB4586DBA703133O00779F7F96AE7295739CAA2ED82E9CFE36C97B9603053O009C43AD4AA503133O0065E71A46E9731F60E0112FB33F4331A31847E503073O002654D72976DC46031A3O0003407B40AD094F7A4AA649173813F959021D1EFB42177042AF2O03053O009E3076427203173O00FF72436527F2ABFD74413771AAF9BE37193D4CF4A8FF7503073O009BCB44705613C503163O00128D61A5122DBCAA1E8F06FD536BD7FD55D822DE4F6C03083O009826BD569C20188503183O00A802F111AE04FE10AF02AA47AF03BD47A505A147AE01AC4703043O00269C37C703163O00FA252E704A25AD17F92A5B3A1675EE77A1707932422603083O0023C81D1C4873149A03143O004DE9858ADC796140EB89CD8C22331C8081C7A87803073O005479DFB1BFED4C030E3O00EE069DF769046696EF03C2F43E0003083O00A1DB36A9C05A305003153O001A135470101554711F1B3320485109214C60012B4203043O004529226003173O00EF968153557AEB9A8158312784E5873836128FE6E12F2C03063O004BDCA3B76A6203173O0056ECD2628151EFDE6F8908BB9B36D707A98E22D716B3DB03053O00B962DAEB5703113O009F6A71B68CFA986574B5FDA5D9393EF08A03063O00CAAB5C4786BE03143O0078927FD9709579DB7F901C893AC92DDB79957DDB03043O00E849A14C03183O00EF8F1A0A4FED81150B4D95DC415517ABD6505810B0F6130C03053O007EDBB9223D03133O005D9B0D272C24A6B2559F7A7D7A78A7B45C9E0803083O00876CAE3E121E1793031B3O00E5BE7B994EFC6595E5B80BC711853ACBBAEC389948FF60F8A3FE3D03083O00A7D6894AAB78CE5303143O00DAA26B0AADF3DBA36B0BEBB38EE0395CC8B5D9A703063O00C7EB90523D9803103O005642EE7B5343EF7B5440B23D5342BC3903043O004B6776D903183O0091022142EF4C9600291FB012CB51621FB012CB516246E14D03063O007EA7341074D903113O009C7B72D9E14DA5907976A3BB0BF9D1387303073O009CA84E40E0D47903123O0056B6F49654B9F49F5EB7A3C90EE1B59F57BF03043O00AE678EC500763O0012193O00013O00206O000200122O000100013O00202O00010001000300122O000200013O00202O00020002000400122O000300053O00062O0003000A000100010004093O000A000100120E000300063O00200600040003000700120E000500083O00200600050005000900120E000600083O00200600060006000A00060C00073O000100062O00163O00064O00168O00163O00044O00163O00014O00163O00024O00163O00054O000F000800136O000900073O00122O000A000C3O00122O000B000D6O0009000B00024O000A00073O00122O000B000E3O00122O000C000F6O000A000C00024O000B00073O00122O000C00103O00122O000D00116O000B000D00024O000C00073O00122O000D00123O00122O000E00136O000C000E00024O000D00073O00122O000E00143O00122O000F00156O000D000F00024O000E00073O00122O000F00163O00122O001000176O000E001000024O000F00073O00122O001000183O00122O001100196O000F001100024O001000073O00122O0011001A3O00122O0012001B6O0010001200024O001100073O00122O0012001C3O00122O0013001D6O0011001300024O001200073O00122O0013001E3O00122O0014001F6O0012001400024O001300073O00122O001400203O00122O001500216O0013001500024O001400073O00122O001500223O00122O001600236O0014001600024O001500073O00122O001600243O00122O001700256O0015001700024O001600073O00122O001700263O00122O001800276O0016001800024O001700073O00122O001800283O00122O001900296O0017001900024O001800073O00122O0019002A3O00122O001A002B6O0018001A00024O001900073O00122O001A002C3O00122O001B002D6O0019001B00024O001A00073O00122O001B002E3O00122O001C002F6O001A001C00024O001B00073O00122O001C00303O00122O001D00316O001B001D00024O001C00073O00122O001D00323O00122O001E00334O001E001C001E00024O001D00073O00122O001E00343O00122O001F00356O001D001F00024O001E00073O00122O001F00363O00122O002000376O001E002000024O001F00073O002O12002000383O002O12002100394O0015001F00214O001700083O000100121D0008000B4O00043O00013O00013O00023O00026O00F03F026O00704002264O001C00025O00122O000300016O00045O00122O000500013O00042O0003002100012O000100076O0013000800026O000900016O000A00026O000B00036O000C00046O000D8O000E00063O00202O000F000600014O000C000F6O000B3O00024O000C00036O000D00046O000E00016O000F00016O000F0006000F00102O000F0001000F4O001000016O00100006001000102O00100001001000202O0010001000014O000D00106O000C8O000A3O000200202O000A000A00024O0009000A6O00073O00010004070003000500012O0001000300054O0016000400024O000B000300044O001000036O00043O00017O00",v9(),...);