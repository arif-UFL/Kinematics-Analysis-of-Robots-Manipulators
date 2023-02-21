% Arif Mohammed

clear all; close all;clc
%% program for forward velocity and accelaration analysis
S6=input('Enter the joint offset s6 in inches: ' );
[J,P_tool_F] = forward_main(S6);
VA_06 =input('Enter the desired tool point velocity when observed from the fixed frame:(as row vector in square brackets): ' );
W_06 =input('Enter the angular velocity of the last link when observed from fixed frame in deg/sec:(as row vector in square brackets): ' )*(pi/180);
alp_06 = input('Enter the desired angular accelaration of the tool point when observed from the fixed frame (as row vector in square brackets) in rad/sec^2:' );
la_06 = input("Enter the desired linear accelaration of the Tool point when observed from the fixed frame (as a row vector in square brackets) in in/sec^2: " );
% concatinating the vectors for velocity state
PA_06 = P_tool_F(1:3);
VO6_06 = VA_06 - cross(W_06,PA_06);
vsf = [W_06(:);VO6_06(:)];
asf = [alp_06(:);la_06(:)];
% calculating the six joint angular velocities
w = inv(J)*vsf;
% calculating the six joint angular accelarations
acc = inv(J)*asf;
fprintf('Angular velocities in rad/sec are: \n' );
disp(w);
fprintf('Angular velocities in deg/sec are: \n' );
display(rad2deg(w));
fprintf('Angular accelarations in rad/sec^2 are: \n' );
disp(acc);
fprintf("Angualar accelaration in deg/sec^2 are; \n" );
display(rad2deg(acc));
%% Program to calculate the forward velocity analysis
function [J,P_tool_F] = forward_main(S6)
% Forward_Analysis by Arif Mohammed
% Asking for inputs:
S6 = S6;
phi1=input('Enter the joint angle phi1 in degrees: ' )*(pi/180);
th2=input('Enter the joint angle theta2 in degrees: ' )*(pi/180);
th3=input('Enter the joint angle theta3 in degrees: ' )*(pi/180);
th4=input('Enter the joint angle theta4 in degrees: ' )*(pi/180);
th5=input('Enter the joint angle theta5 in degrees: ' )*(pi/180);
th6=input('Enter the joint angle theta6 in degrees: ' )*(pi/180);
P_tool_6=input('Enter the coordinates of the tool in the coordinate system 6(Enter the points within square brackets!!!) : ' );
P_tool_6(1,4)=1;
% forward_analysis Function calling
[P_tool_F, S6_F, a67_F,J]=forward_analysis(S6,phi1,th2,th3,th4,th5,th6,P_tool_6);
% Displaying the results:
fprintf('The coordinates of the tool in the fixed coordinate system are: \n' );
fprintf('P_tool_F =\n')
disp(P_tool_F(1:3,1));
fprintf('The values for S6 as seen in fixed coordinate system are: \n' );
disp(S6_F);
fprintf('The values for a67 seen in fixed coordinate system are: \n' );
disp(a67_F);
fprintf('The jacobian Matrix J = \n');
disp(J);
fprintf('Elements of 1st three rows of Jacobian matrix are dimensionless and last three rows have units of inches. \n' )
% forward_analysis_function;
function [P_tool_F, s6_F, a67_F,J] = forward_analysis(S6,phi1,th2,th3,th4,th5,th6, P_tool_6)
% Asking for constant mechanism parameter
a(1,2)=input('Enter the link length a12 in inches: ' );
a(2,3)=input('Enter the link length a23 in inches: ' );
a(3,4)=input('Enter the link length a34 in inches: ' );
a(4,5)=input('Enter the link length a45 in inches: ' );
a(5,6)=input('Enter the link length a56 in inches: ' );
alp(1,2)=input('Enter the twist angle alpha12 in degrees: ' )*(pi/180);
alp(2,3)=input('Enter the twist angle alpha23 in degrees: ' )*(pi/180);
alp(3,4)=input('Enter the twist angle alpha34 in degrees: ' )*(pi/180);
alp(4,5)=input('Enter the twist angle alpha45 in degrees: ' )*(pi/180);
alp(5,6)=input('Enter the twist angle alpha56 in degrees: ' )*(pi/180);
S(2)=input('Enter the joint offset s2 in inches: ' );
S(3)=input('Enter the joint offset s3 in inches: ' );
S(4)=input('Enter the joint offset s4 in inches: ' );
S(5)=input('Enter the joint offset s5 in inches: ' );
S(6)=S6;
th(2)=th2;
th(3)=th3;
th(4)=th4;
th(5)=th5;
th(6)=th6;
J = [];
% First transformation
TF1=calc_TF1(phi1);
TF6=TF1;
J = [J;TF6(1:3,3);cross(TF1(1:3,4),TF6(1:3,3))];
for i=1:5
TF6=TF6*calc_F(th(i+1),a(i,i+1),S(i+1),alp(i,i+1));
J = [J;TF6(1:3,3);cross(TF6(1:3,4),TF6(1:3,3))];
end
% Calculating the coordinates of tool point in the fixed coordinate system!
P_tool_F=((TF6)*(P_tool_6'));
s6_F=TF6(1:3,3);
a67_F=TF6(1:3,1);
J = reshape(J,6,6);
end
% Function to calculate the transformation matrices T12 to T56!
function [ T ] = calc_TF1( phi )
T=[cos(phi),-sin(phi),0,0;sin(phi),cos(phi),0,0;0,0,1,0;0,0,0,1];
end
% Function to calculate the transformation matrix TF1!
function [ F ] = calc_F( th,a,S,alp)
F=[cos(th),-sin(th),0,a;(sin(th)*cos(alp)),(cos(th)*cos(alp)),-sin(alp),-(sin(alp)*S);(sin(th)*sin(alp)),(cos(th)*sin(alp)),cos(alp),(cos(alp)*S);0,0,0,1];
end
end