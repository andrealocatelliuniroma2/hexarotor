function R = Rbody2ned(phi,theta,psi)

cph = cos(phi);   sph = sin(phi);
cth = cos(theta); sth = sin(theta);
cps = cos(psi);   sps = sin(psi);


R = [ cps*cth,  cps*sth*sph - sps*cph,  cps*sth*cph + sps*sph ;
      sps*cth,  sps*sth*sph + cps*cph,  sps*sth*cph - cps*sph ;
     -sth    ,  cth*sph              ,  cth*cph               ];

end