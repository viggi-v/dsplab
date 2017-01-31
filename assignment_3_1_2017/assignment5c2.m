clear all;
close all;


T = 10*(1/50);
Fs = 1000;
dt = 1/Fs;
t = 0:dt:T-dt;
x = sawtooth(2*pi*40*t);

noise = rand(1,200).*-1 + 0.5;
dist_sig = x + noise; 
plot(t, dist_sig);
hold on;
plot(t,x);
hold off;
title('playing with noise');
legend('with noise','without noise');