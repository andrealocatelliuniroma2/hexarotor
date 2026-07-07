function Mtor = M_torque(u, param)
% Yaw moment from aerodynamic reaction torque of the rotors, NED.
% sum(sigma_i * b * omega_i^2).
% u : 6x1 squared rotor speeds [rad^2/s^2]
Mtor = [ 0 ; 0 ; param.b * (param.sigma * u) ];
end