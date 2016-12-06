function INNLSE_f2
%------------------------
%constants:
dt = 2;
beta = 1.5;
C_1 = 1;
C_2 = 1;
C_3 = 1;
C_4 = 3;
C_5 = 2;
C_6 = 5;
M = 1;
im = sqrt(-1);
%------------------------
%linspace for time and space:
t = linspace(-10,10,101);
x = linspace(-10,10,101);
%------------------------
%coefficients:
A1 = 0.5*tanh(0.8*x);
B1 = 0.5*sech(9*x);
%calclulating coefficient:
xi = C_6*t+C_3;
eta = C_4*t+C_1;
%i for time, j for space:

for i  = 1:101
    for j = 1:101
        psi(i,j) = -A1(j)*dt+M*beta*B1(j)/(dt^2-1)...
            *(dt*cosh(xi(i))+cos(eta(i)))...
            /(cosh(xi(i)) + dt*cos(eta(i))) + ...
            im*B1(j)*beta*sin(eta(i))/...
            (cosh(xi(i))+dt*cos(eta(i)));
%------------------------
%real and imaginary parts:
    psi_r = real(psi);
    psi_i = imag(psi);
%solution evolution:
    psi_se(i,j) = psi(i,j)*conj(psi(i,j));

    end
end
figure;
surf(psi_se,'FaceColor',[1 1 1]);
title('Evolution of solution','FontSize',40)
xlabel('t','FontSize',40);
ylabel('x','FontSize',40);
zlabel('{|\Psi|}^2','FontSize',40);
figure;
surf(psi_r,'FaceColor',[1 1 1]);
title('Wave solution','Fontsize',40);
xlabel('t','FontSize',40);
ylabel('x','FontSize',40);
zlabel('\Psi','FontSize',40);


figure;
plot(psi_r(1,:),'Linewidth',1.5);
hold on
plot(psi_r(101,:),'r--','Linewidth',1.5);
xlabel('x','FontSize',40);
ylabel('\Psi','FontSize',40);
title('Waves at different time','FontSize',40);
h_l = legend('t = 0s','t = 10s');
set(h_l,'FontSize',35);



save('INNLSE_f2');
evalin('base','load INNLSE_f2');
end
 