function Mt = M_thrust(u, param)
% Moments from rotor thrusts, body frame (NED).
% Mt = sum_i( r_i x F_i ).
% u : 6x1 squared rotor speeds [rad^2/s^2]
Mt = zeros(3,1);
for i = 1:6
    r_i = param.l * [cos(param.delta(i)); sin(param.delta(i)); 0];  % rotor position
    F_i = [0; 0; -param.k * u(i)];                                  % rotor thrust (NED)
    Mt  = Mt + cross(r_i, F_i);
end

end