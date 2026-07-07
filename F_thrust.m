function Ft = F_thrust(u, param)
% Total thrust force in body frame (NED)
% u : 6x1 vector of squared rotor speeds [rad^2/s^2] (u_i = omega_i^2)
% Thrust points upward, i.e. along -z_b in NED.

T  = param.k * sum(u);       % total thrust [N]
Ft = [0; 0; -T];
end