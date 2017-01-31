Fs = 1000;
dt = 1/Fs;
t = 0:dt:T-dt;

x = sawtooth(2*pi*40*t);
signal = @(x)  10*floor(mod(floor(x/0.625),4)/2);
noise = rand(1,1001);
dist_sig = signal(domain) + noise; 
plot(domain, dist_sig);
hold on;
plot(domain,signal(domain));
hold off;
title('playing with noise');
legend('with noise','without noise');