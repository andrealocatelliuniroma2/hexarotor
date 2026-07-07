function Fc = F_coriolis(Vb, Wb, param)
% Coriolis term of the translational dynamics, body frame (NED).

% NOTE: enters the force equation with a MINUS sign:
%   m*Vb_dot = F_TOT - F_coriolis   
% Vb : 3x1 linear velocity in body frame [m/s]
% Wb : 3x1 angular velocity in body frame [rad/s]
Fc = cross(Wb, param.m * Vb);
end