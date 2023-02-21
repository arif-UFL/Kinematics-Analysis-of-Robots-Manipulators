
function [P_tool_F, S_6_F, a_67_F] = forward_Analysis_T3(S_6,phi1,th2,th3,th4,th5,th6,P_tool_6)


a(1,1)=a_12;
a(1,2)=a_23;
a(1,3)=a_34;
a(1,4)=a_45;
a(1,5)=a_56;

alp(1,1)=alp_12;
alp(1,2)=alp_23;
alp(1,3)=alp_34;
alp(1,4)=alp_45;
alp(1,5)=alp_56;

S(2)=S_2;
S(3)=S_3;
S(4)=S_4;
S(5)=S_5;
S(6)=S_6;

th(2)=th2;
th(3)=th3;
th(4)=th4;
th(5)=th5;
th(6)=th6;


P_tool_6(1,4)=1;

TF1=calc_TF1(phi1);
TF6=TF1;

for i=1:5
    TF6=TF6*calc_F(th(i+1),a(1,i+1),S(i+1),alp(1,i+1));
end    

P_tool_F=((TF6)*(P_tool_6'));

S_6_F=TF6(1:3,3);

a_67_F=TF6(1:3,1);
end
