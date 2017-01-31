domain = -20:20;

impulse = domain==0;
step = domain>=0;
ramp = step.*domain;
diff_ramp = diff(ramp);

subplot(4,1,1);
plot(domain, impulse,'c');
grid on;
title('Unit Impulse Function');

subplot(4,1,2);
plot(domain, step,'r');
grid on;
title('Step Function');

subplot(4,1,3);
stem(domain, ramp,'g');
grid on;
title('Ramp Function');

subplot(4,1,4);
stem(domain(1:40),diff_ramp,'b');
grid on;
title('Derivative of Ramp Function');
