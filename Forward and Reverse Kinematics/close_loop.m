function [a71,S_7,S1,alp71,th7,gam1] = close_loop(P_tool_6,P_tool_f,S_6_f,a_67_f)
i=[1,0,0];
j=[0,1,0];
k=[0,0,1];
err=0.001;
P6_orig_f=P_tool_f-(dot(P_tool_6,i)*a_67_f)-(dot(P_tool_6,j)*cross(S_6_f,a_67_f))-(dot(P_tool_6,k)*S_6_f);
S1_f=[0;0;1];
S_7_f=cross(a_67_f,S_6_f);
c71=dot(S_7_f,S1_f);
if((c71<(1+err)&&c71>(1-err))||(c71>(-1-err)&&c71<(-1+err)))
        S_7=0;
        S1=-(dot(P6_orig_f,S1_f));
        a71=norm(-P6_orig_f+(S1*S1_f));
        a71_f=-P6_orig_f+(S1*S1_f)/a71;
        if(a71==0)
            gam1=atan2(dot(cross(a71_f,[1;0;0]),S1_f),dot(a71_f,[1;0;0]));
        else
            a71_f=-P6_orig_f+(S1*S1_f)/a71;
            c7=dot(a_67_f,a71_f);
            S_7=dot(cross(a_67_f,a71_f),S_7_f);
            gam1=atan2(dot(cross(a71_f,[1;0;0]),S1_f),dot(a71_f,[1;0;0]));
        end
else
        a71_f=cross(S_7_f,S1_f)/norm(cross(S_7_f,S1_f));
        S_71=dot(cross(S_7_f,S1_f),a71_f);
        c7=dot(a_67_f,a71_f);
        S_7=dot(cross(a_67_f,a71_f),S_7_f);
        gam1=atan2(dot(cross(a71_f,[1;0;0]),S1_f),dot(a71_f,[1;0;0]));
        S_7=dot(cross(S1_f,P6_orig_f),a71_f)/S_71;
        a71=dot(cross(P6_orig_f,S1_f),S_7_f)/S_71;
        S1=dot(cross(P6_orig_f,S_7_f),a71_f)/S_71;

end
alp71=atan2(S_71,c71);
th7=atan2(S_7,c7);
end
