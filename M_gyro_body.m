function Mgb = M_gyro_body(Wb, param)
% Gyroscopic term of the rigid body
% NOTE: enters the moment equation with a MINUS sign:
% I*Wb_dot = M_TOT - M_gyro_body   
Mgb = cross(Wb, param.I_hexa * Wb);
end