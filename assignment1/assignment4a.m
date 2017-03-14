close all;
clear all;

rand_sig = rand(1,100).*-0.8 +0.4

gaussian_sig = normrnd(0,3,1,75)

plot(1:100,rand_sig);
title('Random Signal');
figure();

plot(1:75,gaussian_sig);
title('Gaussian Random Signal');

figure();

domain = -1*pi:0.001:pi;

A = rand(1,5)*4;
phi = rand(1,5)*2*pi;
colors = ['g','r','b','k','c'];
hold on;
for i=1:5
  plot(domain, A(i).*sin(domain+phi(i)),colors(i));
end;
title('5 sinusoids of random amplitude and phase');
