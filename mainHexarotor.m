% Locatelli Andrea :  Hexarotor

%% INITIAL CONDITION

x0 = zeros(12,1);

x0(3)= 0; % z position
x0(7)= deg2rad(0); % roll position
x0(8)= deg2rad(0); % pitch position
x0(9)= deg2rad(0); % yaw position

x_des = 0;
y_des = 0;
z_des = -10;
roll_des = 0;
theta_des = 0;
yaw_des = 0;

%% HEXAROTOR PARAMETERS

param = struct();

param.m = 5; % mass [kg]
param.g = 9.8; % gravity [m/s^2]
param.rho = 1.225; % air density [Kg/m^3]
param.Cd_x = 1.1; % drag coeff. (x) [-]
param.Cd_y = 1.1; % drag coeff. (y) [-]
param.Cd_z = 1.2; % drag coeff. (z) [-]
param.s_x = 0.03;% body surface (x) [m^2]
param.s_y = 0.03;% body surface (y) [m^2]
param.s_z = 0.08;% body surface (z) [m^2]
param.k = 1.3e-5; % thrust coeff. [N s^2/rad^2]
param.b = 2.4e-7; % reaction torque coeff. [N m s^2/rad^2]
param.I_hexa = diag([0.055, 0.055, 0.10]); % inertial matrix [kg m^2]  Ixx = Iyy < Izz
param.I_r = 9e-5; % rotor+prop spin inertia [kg m^2]

%% HEXAROTOR GEOMETRY

param.l = 0.34; % arm length [m]
param.sigma = [-1 1 -1 1 1 -1] ; % CW(-1)/CCW(1) vector
param.delta = [deg2rad(90) deg2rad(270) deg2rad(330) deg2rad(150) deg2rad(30) deg2rad(210)];  % rotor angle vector [rad]

%% ROTOR DYNAMICS (2nd order)
param.zeta_r = 0.8;        % rotor damping ratio 
param.wn_r   = 2*pi*2;     % rotor natural frequency [rad/s] 