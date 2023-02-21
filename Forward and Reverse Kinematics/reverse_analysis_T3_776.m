function [ph1A, ph1B, th_1A, th_1B, th_2A, th_2B, th_2C, th_2D, th_3A, th_3B, th_3C, th_3D, th_4A, th_4B, th_4C, th_4D, th_4E, th_4F, th_4G, th_4H, th_5A, th_5B, th_5C, th_5D, th_5E, th_5F, th_5G, th_5H, th_6A, th_6B, th_6C, th_6D, th_6E, th_6F, th_6G, th_6H] = reverse_analysis_T3_776 (a_12,a_23,a_34,a_45,a_56,a_67,alp_12,alp_23,alp_34,alp_45,alp_56,alp_67,S_2,S_3,S_4,S_5,S_6,P_tool_6,P_tool_f,S_6_f,a_67_f)
[a71,S7,S1,alp71,th7,gam1]=close_loop(P_tool_6,P_tool_f,S_6_f,a_67_f);
% Calculating Thetha1A & Thetha1B 
th_1A = atan((S_6*cos(th7)*cos(alp71)+S7*sin(alp71))/(S_6*sin(th7)+a71));
th_1B=th_1A+pi;
ph1A=th_1A-gam1;
ph1B=th_1B-gam1;
% Calculating Thetha3A & Thetha3B
th1=th_1A;
X1= (sin(alp71) * sin(th1));
Y1= -( sin(alp_12) * cos(alp71) + cos(alp_12) * sin(alp71) * cos(th1));
Z1= (cos(alp_12) * cos(alp71) - sin(alp_12) * sin(alp71) * cos(th1));
X7= sin(alp_67)*sin(th7);
Y7= -(sin(alp71)*cos(alp_67) + cos(alp71) * sin(alp_67) *cos(th7));
Z7=(cos(alp71) * cos(alp_67) - sin(alp71)*sin(alp_67)*cos(th7)) ;
X71=X7*cos(th1) - Y7*sin(th1);
Y71 = cos(alp_12)*(X7*sin(th1) + Y7*cos(th1)) - sin(alp_12) * Z7;
Z71 = sin(alp_12) * (X7 * sin(th1) + Y7 * cos(th1)) + cos(alp_12) * Z7;
A = -(S_6 * X71) - (S7 * X1) -(a71 * cos(th1));
B=(-S1) + (S_6*Y71) + (S7*Y1);
th_3A = asin((A^2 + B^2 - a_23^2 - S_4^2)/(2*a_23*S_4));
th_3B= -(th_3A+pi);
%3C&3D
th1=th_1B;
X1= (sin(alp71) * sin(th1));
Y1= -( sin(alp_12) * cos(alp71) + cos(alp_12) * sin(alp71) * cos(th1));
Z1= (cos(alp_12) * cos(alp71) - sin(alp_12) * sin(alp71) * cos(th1));
X7= sin(alp_67)*sin(th7);
Y7= -(sin(alp71)*cos(alp_67) + cos(alp71) * sin(alp_67) *cos(th7));
Z7=(cos(alp71) * cos(alp_67) - sin(alp71)*sin(alp_67)*cos(th7)) ;
X71=X7*cos(th1) - Y7*sin(th1);
Y71 = cos(alp_12)*(X7*sin(th1) + Y7*cos(th1)) - sin(alp_12) * Z7;
Z71 = sin(alp_12) * (X7 * sin(th1) + Y7 * cos(th1)) + cos(alp_12) * Z7;
A = (-S_6 * X71) - (S7 * X1) -(a71 * cos(th1));
B=(-S1) + (S_6*Y71) + (S7*Y1);
th_3C = asin((A^2 + B^2 - a_23^2 - S_4^2)/(2*a_23*S_4));
th_3D= -(th_3C+pi);
%2A 
th3=th_3A;
A=-A;
L = [(a_23+S_4*sin(th3)) (S_4*cos(th3)) ; -(S_4*cos(th3)) (a_23+S_4*sin(th3))];
constant = [A; B];
trig = L^-1 * constant ; 
th_2A=acos(trig(1));
acosd(trig);
%2B 
th3=th_3B;
L = [(a_23+S_4*sin(th3)) (S_4*cos(th3)) ; -(S_4*cos(th3)) (a_23+S_4*sin(th3))];
constant = [A; B];
trig = L^-1 * constant ;
th_2B=asin(trig(2));
%2C 
th3=th_3C;
A=-A;
L = [(a_23+S_4*sin(th3)) (S_4*cos(th3)) ; -(S_4*cos(th3)) (a_23+S_4*sin(th3))];
constant = [A; B];
trig = L^-1 * constant ; 
acosd(trig);
th_2C= - acos(trig(1));
%2D
th3=th_3D;
L = [(a_23+S_4*sin(th3)) (S_4*cos(th3)) ; -(S_4*cos(th3)) (a_23+S_4*sin(th3))];
constant = [A; B];
trig = L^-1 * constant ; 
th_2D=acos(trig(1));
%5A & 5B
th1=th_1A;
th3=th_3A;
th2=th_2A;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
num = cos(alp_56)*cos(alp_45) - Z7123;
den=sin(alp_56)*sin(alp_45);
th_5A=acos(num/den);
th_5B=-acos(num/den);
%5C&5D
th1=th_1A;
th3=th_3B;
th2=th_2B;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
num = cos(alp_56)*cos(alp_45) - Z7123;
den=sin(alp_56)*sin(alp_45);
th_5C=acos(num/den);
th_5D=-acos(num/den);
%5E&5F
th1=th_1B;
th3=th_3C;
th2=th_2C;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
num = cos(alp_56)*cos(alp_45) - Z7123;
den=sin(alp_56)*sin(alp_45);
th_5E=acos(num/den);
th_5F=-acos(num/den);
%5G&5H
th1=th_1B;
th3=th_3D;
th2=th_2D;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
num = cos(alp_56)*cos(alp_45) - Z7123;
den=sin(alp_56)*sin(alp_45);
th_5G=acos(num/den);
th_5H=-acos(num/den);
%4A
th1=th_1A;
th3=th_3A;
th2=th_2A;
th5=th_5A;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
%% solving for Th4
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
%%M4=[c4;S_4];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4A=acos(M4(1));
%4B
th1=th_1A;
th3=th_3A;
th2=th_2A;
th5=th_5B;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4B=-acos(M4(1));
%4C
th1=th_1A;
th3=th_3B;
th2=th_2B;
th5=th_5C;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4C=acos(M4(1));
%4D
th1=th_1A;
th3=th_3B;
th2=th_2B;
th5=th_5D;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4D=-acos(M4(1));
%4E
th1=th_1B;
th3=th_3C;
th2=th_2C;
th5=th_5E;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4E=-acos(M4(1));
%4F
th1=th_1B;
th3=th_3C;
th2=th_2C;
th5=th_5F;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4F=acos(M4(1));
%4G
th1=th_1B;
th3=th_3D;
th2=th_2D;
th5=th_5G;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4G=-acos(M4(1));
%4H
th1=th_1B;
th3=th_3D;
th2=th_2D;
th5=th_5H;
X7=sin(alp_67)*sin(th7);
Y7=-(sin(alp71)*cos(alp_67)+cos(alp71)*sin(alp_67)*cos(th7));
Z7=(cos(alp71)*cos(alp_67)-sin(alp71)*sin(alp_67)*cos(th7));
X71=X7*cos(th1)-Y7*sin(th1);
Y71=cos(alp_12)*(X7*sin(th1)+Y7*cos(th1))-sin(alp_12)*Z7;
Z71=sin(alp_12)*(X7*sin(th1)+Y7*cos(th1))+cos(alp_12)*Z7;
X712=X71*cos(th2)-Y71*sin(th2);
Y712=cos(alp_23)*(X71*sin(th2)+Y71*cos(th2))-sin(alp_23)*Z71;
Z712=sin(alp_23)*(X71*sin(th2)+Y71*cos(th2))+cos(alp_23)*Z71;
X7123=X712*cos(th3)-Y712*sin(th3);
Y7123=cos(alp_34)*(X712*sin(th3)+Y712*cos(th3))-sin(alp_34)*Z712;
Z7123=sin(alp_34)*(X712*sin(th3)+Y712*cos(th3))+cos(alp_34)*Z712;
L4=[sin(alp_56)*sin(th5) sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5); sin(alp_45)*cos(alp_56)+cos(alp_45)*sin(alp_56)*cos(th5) -sin(alp_56)*sin(th5)];
N4=[X7123;Y7123];
M4 = (L4^-1)*N4;
th_4H=acos(M4(1));
%6A
th1=th_1A;
th3=th_3A;
th2=th_2A;
th5=th_5A;
th4=th_4A;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6A=acos(Y43217/sin(alp_56));
%6B
th1=th_1A;
th3=th_3A;
th2=th_2A;
th5=th_5B;
th4=th_4B;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6B=-acos(Y43217/sin(alp_56));
%6C
th1=th_1A;
th3=th_3B;
th2=th_2B;
th5=th_5C;
th4=th_4C;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6C=-acos(Y43217/sin(alp_56));
%6D
th1=th_1A;
th3=th_3B;
th2=th_2B;
th5=th_5D;
th4=th_4D;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6D=acos(Y43217/sin(alp_56));
%6E
th1=th_1B;
th3=th_3C;
th2=th_2C;
th5=th_5E;
th4=th_4E;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6E=-acos(Y43217/sin(alp_56));
%6F
th1=th_1B;
th3=th_3C;
th2=th_2C;
th5=th_5F;
th4=th_4F;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6F=acos(Y43217/sin(alp_56));
%6F
th1=th_1B;
th3=th_3D;
th2=th_2D;
th5=th_5G;
th4=th_4G;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6G=acos(Y43217/sin(alp_56));
%6F
th1=th_1B;
th3=th_3D;
th2=th_2D;
th5=th_5H;
th4=th_4H;
X_4=sin(alp_45)*sin(th4);
Y_4=-(sin(alp_34)*cos(alp_45)+cos(alp_34)*sin(alp_45)*cos(th4));
Z_4=(cos(alp_34)*cos(alp_45)-sin(alp_34)*sin(alp_45)*cos(th4));
X43=X_4*cos(th3)-Y_4*sin(th3);
Y43=cos(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))-sin(alp_23)*Z_4;
Z43=sin(alp_23)*(X_4*sin(th3)+Y_4*cos(th3))+cos(alp_23)*Z_4;
X432=X43*cos(th2)-Y43*sin(th2);
Y432=cos(alp_12)*(X43*sin(th2)+Y43*cos(th2))-sin(alp_12)*Z43;
Z432=sin(alp_12)*(X43*sin(th2)+Y43*cos(th2))+cos(alp_12)*Z43;
X4321=X432*cos(th1)-Y432*sin(th1);
Y4321=cos(alp71)*(X432*sin(th1)+Y432*cos(th1))-sin(alp71)*Z432;
Z4321=sin(alp71)*(X432*sin(th1)+Y432*cos(th1))+cos(alp71)*Z432;
X43217=X4321*cos(th7)-Y4321*sin(th7);
Y43217=cos(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))-sin(alp_67)*Z4321;
Z43217=sin(alp_67)*(X4321*sin(th7)+Y4321*cos(th7))+cos(alp_67)*Z4321;
th_6H=-acos(Y43217/sin(alp_56));
endfunction
