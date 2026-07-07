function J = J_body2euler(phi, theta)
% Body rates [p;q;r] -> Euler rates [phi_dot; theta_dot; psi_dot]
% SINGULARITY theta = ±pi/2 (gimbal lock).

sph = sin(phi);  cph = cos(phi);
cth = cos(theta); tth = tan(theta);

J = [ 1,  sph*tth,  cph*tth ;
      0,  cph    , -sph     ;
      0,  sph/cth,  cph/cth ];
end