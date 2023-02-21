function[P_tool_F,S_6_F,a_67_F] = result_one(ph1A,th_1A,th_2A,th_3A,th_4B,th_5B,th_6B,a_12,a23,a_34,a_45,a_56,alp_12,alp_23,alp_34,alp_45,alp_56,S1,S_2,S_3,S_4,S_5,S_6,P_tool_6);
 ph1=ph1A;
 th2=th_2A;
 th3=th_3A;
 th4=th_4B;
 th5=th_5B;
 th6=th_6B;
 S=[S1 S_2 S_3 S_4 S_5 S_6];
 a=[a_12 a23 a_34 a_45 a_56 ];
 alpha=[alp_12 alp_23 alp_34 alp_45 alp_56];
 theta=[ph1 th2 th3 th4 th5 th6];
 p_6=[P_tool_6(1); P_tool_6(2); P_tool_6(3); 1];

 T_1F = [ cos(theta(1)) -sin(theta(1)) 0 0; sin(theta(1)) cos(theta(1)) 0 0; 0 0 1 0; 0 0 0 1];

 T_21 = [ cos(theta(2)) -sin(theta(2)) 0 a(1);
          sin(theta(2))*cos(alpha(1)) cos(theta(2))*cos(alpha(1)) -sin(alpha(1)) -sin(alpha(1)).*S(2);
          sin(theta(2))*sin(alpha(1)) cos(theta(2))*sin(alpha(1)) cos(alpha(1)) cos(alpha(1)).*S(2);
          0 0 0 1];
 T_32 = [ cos(theta(3)) -sin(theta(3)) 0 a(2);
          sin(theta(3))*cos(alpha(2)) cos(theta(3))*cos(alpha(2)) -sin(alpha(2)) -sin(alpha(2)).*S(3);
          sin(theta(3))*sin(alpha(2)) cos(theta(3))*sin(alpha(2)) cos(alpha(2)) cos(alpha(2)).*S(3);
          0 0 0 1];
 T_43 = [ cos(theta(4)) -sin(theta(4)) 0 a(3);
          sin(theta(4))*cos(alpha(3)) cos(theta(4))*cos(alpha(3)) -sin(alpha(3)) -sin(alpha(3)).*S(4);
          sin(theta(4))*sin(alpha(3)) cos(theta(4))*sin(alpha(3)) cos(alpha(3)) cos(alpha(3)).*S(4);
          0 0 0 1];
 T_54 = [ cos(theta(5)) -sin(theta(5)) 0 a(4);
          sin(theta(5))*cos(alpha(4)) cos(theta(5))*cos(alpha(4)) -sin(alpha(4)) -sin(alpha(4)).*S(5);
          sin(theta(5))*sin(alpha(4)) cos(theta(5))*sin(alpha(4)) cos(alpha(4)) cos(alpha(4)).*S(5);
          0 0 0 1];
 T_65 = [ cos(theta(6)) -sin(theta(6)) 0 a(5);
          sin(theta(6))*cos(alpha(5)) cos(theta(6))*cos(alpha(5)) -sin(alpha(5)) -sin(alpha(5)).*S(6);
          sin(theta(6))*sin(alpha(5)) cos(theta(6))*sin(alpha(5)) cos(alpha(5)) cos(alpha(5)).*S(6);
          0 0 0 1];
     
 T_6F = T_1F * T_21 * T_32 * T_43 * T_54 * T_65;

 P_F = T_6F * p_6;

 P_tool_F = [P_F(1) P_F(2) P_F(3)];

 S_6_F = [T_6F(1,3) T_6F(2,3) T_6F(3,3)];

 a_67_F = [T_6F(1,1) T_6F(2,1) T_6F(3,1)];


 
endfunction
