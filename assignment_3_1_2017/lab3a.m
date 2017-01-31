clear all;
close all;

domain = -20:20;
domain2 = -20:2:20;
domain3 = -20:0.5:20;
impulse = zeros(1,41);
impulse(21) = 1;

range = impulse;
range2 = decimate(range,2);
range3 = interp(range,2);

subplot(3,1,1);
stem(domain, range);
title('Original Signal');

subplot(3,1,2);
stem(domain2, range2);
title('Decimated Signal');

subplot(3,1,3);
stem(domain3, range3(1:81));
title('Interpolated Signal');
