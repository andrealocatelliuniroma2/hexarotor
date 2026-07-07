function Fa = F_aero(Vb, param)
% Aerodynamic drag force of the body, expressed in body frame (NED).
% Vb : 3x1 linear velocity in body frame [m/s]
Cd = [param.Cd_x; param.Cd_y; param.Cd_z];   % drag coefficients [-]
s  = [param.s_x;  param.s_y;  param.s_z];    % reference surfaces [m^2]
Fa = -0.5 * param.rho * (s .* Cd) .* sign(Vb) .* Vb.^2;
end