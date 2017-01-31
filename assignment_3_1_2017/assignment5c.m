domain = 0:0.01:10;

signal = @(x) 10 - 10*floor(mod(floor(x/0.625),4)/3);
noise = rand(1,1001).*-1 + 0.5;
dist_sig = signal(domain) + noise; 
plot(domain, dist_sig);
hold on;
plot(domain,signal(domain));
hold off;
title('playing with noise');
legend('with noise','without noise');