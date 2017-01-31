clear all;
close all;

domain = -40:0.001:10;
c = -1/12 + pi*i/6;

impulse = @(x)x==0;

sp_fun   = @(k,c,n) k*exp(n.*c);
sp_fun_2 = @(K,n,C)(K.*n.*(C.^n));

subplot(3,1,1);

plot(domain, impulse(domain-2));
hold on;
plot(domain, impulse(domain+3));
hold off;
title('Time Shifting demonstration for unit step function');
legend('f[n-2]','f[n+3]');

subplot(3,1,2);

plot(domain, sp_fun(3, c,domain-2));
hold on;
plot(domain, sp_fun(3, c,domain+3));
hold off;
title('Time Shifting demonstration for eq.2, assignment 1');
legend('f[n-2]','f[n+3]');

subplot(3,1,3);

plot(domain, sp_fun_2(3,domain-2,-0.5));
hold on;
plot(domain, sp_fun_2(3,domain+3,-0.5));
hold off;
title('Time Shifting demonstration for eq.3, assignment 1');
legend('f[n-2]','f[n+3]');
