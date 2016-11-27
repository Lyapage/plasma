function analy_electron
q = 1.602*10^-19;
m = 9.109*10^-31;
E = 1000;
B = 0.1;
dt = 10^-11;
t = linspace(0.0,100*dt,101);
vx0 = 10^5;
vy0 = 2*10^5;
vz0 = 1.5*10^5;

omega_c = q*B/m;
v_p = sqrt(vx0^2+vy0^2);
theta0 = atan(vx0/vy0);

x = v_p/omega_c.*cos(-omega_c.*t+theta0)-v_p/omega_c*cos(theta0);
y = -v_p/omega_c.*sin(-omega_c.*t+theta0) - E/B.*t + v_p/omega_c*sin(theta0);
z = vz0.*t;
% for ions:
%---------------------------
%x = -v_p/omega_c.*cos(omega_c.*t+theta0)+v_p/omega_c*cos(theta0);
%y = v_p/omega_c.*sin(omega_c.*t+theta0) - E/B.*t - v_p/omega_c*sin(theta0);
% and dont forget to calculate mass for ions!

figure 
plot3(x,y,z)

xlabel('X(m)');
ylabel('Y(m)');
zlabel('Z(m)');
title('electron trajectory');

save('analy_electron');
evalin('base','load analy_electron');
end