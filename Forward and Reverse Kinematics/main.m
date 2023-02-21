
%linklength
a_12= input('a_12: ');a_23= input('a_23: ');
a_34= input('a_34: ');a_45= input('a_45: ');
a_56= input('a_56: ');a_67= input('a_67: ');

%twist angle
alpha_12= input('alpha_12: ');alpha_23= input('alpha_23: ');
alpha_34= input('alpha_34: ');alpha_45= input('alpha_45: ');
alpha_56= input('alpha_56: ');alpha_67= input('alpha_67: ');

alp_12= alpha_12*pi/180;alp_23= alpha_23*pi/180;
alp_34= alpha_34*pi/180;alp_45= alpha_45*pi/180;
alp_56= alpha_56*pi/180;alp_67= alpha_67*pi/180;

%joint offset

S_2= input('S_2: ');S_3= input('S_3: ');
S_4= input('S_4: ');S_5= input('S_5: ');
S_6= input('S_6: ');

%P_tool_6, P_tool_f, S_6_f, and a_67_f.

P_tool_6= input('P_tool_6 in square brackets with semi-colon between each : ');P_tool_f=input(' P_tool_f in square brackets with semi-colon between each: ');
S_6_f=input('S_6_f in square brackets with semi-colon between each : ');a_67_f=input(' a_67_f in square brackets with semi-colon between each: ');

% Close loop function

[a71,S_7,S1,alp71,th7,gam1]=close_loop(P_tool_6,P_tool_f,S_6_f,a_67_f);

%%reverse_analysis_cincinnati

[ph1A, ph1B, th_1A, th_1B, th_2A, th_2B, th_2C, th_2D, th_3A, th_3B, th_3C, th_3D, th_4A, th_4B, th_4C, th_4D, th_4E, th_4F, th_4G, th_4H, th_5A, th_5B, th_5C, th_5D, th_5E, th_5F, th_5G, th_5H, th_6A, th_6B, th_6C, th_6D, th_6E, th_6F, th_6G, th_6H] = reverse_analysis_T3_776 (a_12,a_23,a_34,a_45,a_56,a_67,alp_12,alp_23,alp_34,alp_45,alp_56,alp_67,S_2,S_3,S_4,S_5,S_6,P_tool_6,P_tool_f,S_6_f,a_67_f)

fprintf('theta1A: \n');display(th_1A*180/pi);
fprintf('theta1B: \n');display(th_1B*180/pi);
fprintf('Phi1A: \n');display(ph1A*180/pi);
fprintf('Phi1B: \n');display(ph1B*180/pi);
fprintf('theta3A: \n');display(th_3A*180/pi);
fprintf('theta3B: \n');display(th_3B*180/pi);
fprintf('theta3C: \n');display(th_3C*180/pi);
fprintf('theta3D: \n');display(th_3D*180/pi);
fprintf('theta2A= \n');display(th_2A*180/pi);
fprintf('theta2B= \n');display(th_2B*180/pi);
fprintf('theta2C= \n');display(th_2C*180/pi);
fprintf('theta2D= \n');display(th_2D*180/pi);
fprintf('theta5A= \n');display(th_5A*180/pi);
fprintf('theta5B= \n');display(th_5B*180/pi);
fprintf('theta5C= \n');display(th_5C*180/pi);
fprintf('theta5D= \n');display(th_5D*180/pi);
fprintf('theta5E= \n');display(th_5E*180/pi);
fprintf('theta5F= \n');display(th_5F*180/pi);
fprintf('theta5G= \n');display(th_5G*180/pi);
fprintf('theta5H= \n');display(th_5H*180/pi);
fprintf('theta4A= \n');display(th_4A*180/pi);
fprintf('theta4B= \n');display(th_4B*180/pi);
fprintf('theta4C= \n');display(th_4C*180/pi);
fprintf('theta4D= \n');display(th_4D*180/pi);
fprintf('theta4E= \n');display(th_4E*180/pi);
fprintf('theta4F= \n');display(th_4F*180/pi);
fprintf('theta4G= \n');display(th_4G*180/pi);
fprintf('theta4H= \n');display(th_4H*180/pi);
fprintf('theta6A= \n');display(th_6A*180/pi);
fprintf('theta6B= \n');display(th_6B*180/pi);
fprintf('theta6C= \n');display(th_6C*180/pi);
fprintf('theta6D= \n');display(th_6D*180/pi);
fprintf('theta6E= \n');display(th_6E*180/pi);
fprintf('theta6F= \n');display(th_6F*180/pi);
fprintf('theta6G= \n');display(th_6G*180/pi);
fprintf('theta6H= \n');display(th_6H*180/pi);

[P_tool_F,S_6_F,a_67_F] = result_zero(ph1A,th_1A,th_2A,th_3A,th_4A,th_5A,th_6A,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_zero: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_one(ph1A,th_1A,th_2A,th_3A,th_4B,th_5B,th_6B,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_one: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_two(ph1A,th_1A,th_2B,th_3B,th_4C,th_5C,th_6C,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_two: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_three(ph1A,th_1A,th_2B,th_3B,th_4D,th_5D,th_6D,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_three: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_four(ph1B,th_1B,th_2C,th_3C,th_4E,th_5E,th_6E,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_four: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_five(ph1B,th_1B,th_2C,th_3C,th_4F,th_5F,th_6F,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_five: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_six(ph1B,th_1B,th_2D,th_3D,th_4G,th_5G,th_6G,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_six: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);

[P_tool_F,S_6_F,a_67_F] = result_seven(ph1B,th_1B,th_2D,th_3D,th_4H,th_5H,th_6H,a_12,a_23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
fprintf('result_seven: \n');
display(P_tool_F);
display(S_6_F);
display(a_67_F);