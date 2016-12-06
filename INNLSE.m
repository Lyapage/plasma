function INNLSE
%------------------------
%constants:
i = sqrt(-1);
beta = 13;
C_1 = 0;
C_2 = 0;
C_3 = 0;
C_4 = 2;
C_5 = 2;
M = 1;
%------------------------
%linspace for time and space:
t = linspace(-10,10,101);
x = linspace(-10,10,101);
%------------------------
%coefficients:
B_1 = 2*sech(0.01*x);
a_1 = cos(x);
a_2 = 2*C_5*a_1./(B_1.^2*beta^2);
a_3 = sin(x);
a_4 = 6*C_5.*a_3./(B_1.^2*beta^2);
a_5 = -a_4;
%------------------------
%variable:
%why not calculate in for-loop since matlab will explode
    xi_s = -2*(sin(x)-cos(x));
    eta_s = sin(x) - 3*cos(x);
    delta_s = sin(x)- cos(x);
for k = 1:101
    for j = 1:101
        xi(k,j) = t(k) + xi_s(j);
        eta(k,:) = eta_s;
        delta(k,j) = t(k) - delta_s(j);
%calculate the wave psi:
        psi(k,j) = M*beta*sech(xi(k,j))*exp(i*(delta(k,j) + M*eta(k,j)));
        psi_r(k,j) = real(psi(k,j));
        psi_i(k,j) = imag(psi(k,j));
        psi_se(k,j) = psi(k,j)*conj(psi(k,j));
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

save('INNLSE');
evalin('base','load INNLSE');
end

