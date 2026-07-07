function Fg = F_grav(phi, theta, psi, param)

% Gravity Force body frame (NED): Fg = R_bg' * [0; 0; m*g]

R  = Rbody2ned(phi, theta, psi);
Fg = R.' * [0; 0; param.m * param.g];

end