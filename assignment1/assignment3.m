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
title('Signal 1 : Original Signal');

subplot(3,1,2);
stem(domain2, range2);
title('Signal 1 : Decimated Signal');

subplot(3,1,3);
stem(domain3, range3(1:81));
title('Signal 1 : Interpolated Signal');

clear all;
figure();

domain1 = -20:20;
domain2 = -20:2:20;
domain3 = -20:0.5:20;

c = -1/12 + pi*i/6;
range1 = 3*exp(domain1.*c);
range2 = decimate(range1,2);
range3 = interp(range1,2);

subplot(3,1,1);
stem(domain1, range1);
title('Signal 2 : Original Signal');

subplot(3,1,2);
stem(domain2, range2);
title('Signal 2 : Decimated Signal');

subplot(3,1,3);
stem(domain3, range3(1:81));
title('Signal 2 : Interpolated Signal');

clear all;
figure();

domain1 = -20:20;
domain2 = -20:2:20;
domain3 = -20:0.5:20;

myFunction = @(K,n,C)(K.*n.*(C.^n));

range1 = myFunction(5,domain1,0.9);
range2 = decimate(range1,2);
range3 = interp(range1,2);

subplot(3,1,1);
stem(domain1, range1);
title('Signal 3 : Original Signal');

subplot(3,1,2);
stem(domain2, range2);
title('Signal 3 : Decimated Signal');

subplot(3,1,3);
stem(domain3, range3(1:81));
title('Signal 3 : Interpolated Signal');
