function electron
clear all
close all
clc
%======================
%basic condition for electron
e = 1.602*10^-19; %charge for electron
m = 9.109*10^-31; %mass of electron
%======================
E = 1000; %electric field
B = 0.1; %magnetic field
%======================
dt = 10^-11; %time step size
nt = 101; %100 time steps, 101 points
t = linspace(0.0,(nt-1)*dt,101); %time period
%======================
%initial condition:start from original point
x_0 = 0; y_0 = 0; z_0 = 0;
vx_0= 10^5;  vy_0 = 2*vx_0;    vz_0 = 1.5*vx_0;
%======================
%at the beginning,set calculating arrays for postion and velocity:
%----------------
%position:
x = zeros(nt,1);    y = zeros(nt,1);    
z = vz_0.*t; % position in z is a line
%----------------
%velocity:
vx = zeros(nt,1);   vy = zeros(nt,1);   
vz = vz_0*ones(nt,1); %velocity in z-direction is constant
%----------------
%acceleration:
ax = zeros(nt,1);   ay = zeros(nt,1);   az = zeros(nt,1);
%-----------------
%put initial condition into these arrays:
x(1) = x_0; y(1) = y_0; z(1) = z_0;
vx(1) = vx_0;   vy(1) = vy_0;
%according to scheme, x(2),y(2)cannot not be calculated
%so euler method is needed here to calculate x(2),y(2)
x(2) = x(1) + vx(1)*dt; y(2) = y(1) + vy(1)*dt;
%========================================
%define the coefficient explained in problem description
k1 = e*B*dt/(2*m);  k2 = e*B*dt^2/m;    k3 = 1/(1+k1^2);
%========================================================
%-----------------------
%calculating position:
for n = 2:nt-1
    x(n+1) = k3*(2*x(n)-x(n-1)-k1*y(n-1)-k2+2*k1*y(n)...
        -k1*y(n-1)+k1^2*x(n-1));
    y(n+1) = k3*(2*y(n)-y(n-1)+k1*x(n-1)-2*k1*x(n)...
        +k1*x(n-1)+k1^2*y(n-1)+k1*k2);
end
%------------------------
%calculating velocity:
for n = 2:nt-1
    vx(n) = (x(n+1)-x(n-1))/(2*dt);
    vy(n) = (y(n+1)-y(n-1))/(2*dt);
end
    vx(nt) = (x(nt)-x(nt-1))/(dt);    vy(nt) = (y(nt)-y(nt-1))/(dt);
    v = sqrt(vx.^2+vy.^2+vz.^2);
%-------------------------
%calculating acceleration:
for n = 1:nt
    ax = e/m*vy(n)*B-e/m*E;
    az = -e/m*vx(n)*B;
end


figure
plot3(x,y,z,'b--','Linewidth',3);
title('Trajectory of electron in eletric and magnetic field');
xlabel('X(m)');
ylabel('Y(m)');
zlabel('Z(m)');

disp(['The magnitude of the velocity at step 100 is: '...
    ,num2str(v(101)),' ','m/s']);
disp([' ']);
disp(['At step 100, the velocity in the x-direction is: '...
    ,num2str(vx(101)),'','m/s;']);
disp(['in the y-direction is: '...
    ,num2str(vy(101)),' ','m/s']);
disp(['in the z-direction is: '...
    ,num2str(vz(101)),' ','m/s']);
disp([' ']);
disp(['At step 100, the distance in the z-direction is: '...
    ,num2str(z(101)),' ','m']);
disp([' ']);
disp(['If the initial velocity in the x and y direction is 0'...
    ' ','distance traveled is also ',num2str(z(101)),' ','m']);
disp([' ']);
%==========================
%velocity in the plane perpendicular to magnetic field
v_p = sqrt(vx(101)^2+vy(101)^2); 

omega_c = e*B/m; %cyclotron frequency
R_l = v_p/omega_c; %Larmor radius
disp(['At step 100, Lamor radius is: ',num2str(R_l),' ','m']);

save('electron');
evalin('base','load electron');
end