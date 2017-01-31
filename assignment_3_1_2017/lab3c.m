clear all;
close all;

domain1 = -20:20;
domain2 = -20:2:20;
domain3 = -20:0.5:20;

myFunction = @(K,n,C)(K.*n.*(C.^n));

range1 = myFunction(5,domain1,0.9);
range2 = decimate(range1,2);
range3 = interp(range1,2);

subplot(3,1,1);
stem(domain1, range1);
title('Original Signal');

subplot(3,1,2);
stem(domain2, range2);
title('Decimated Signal');

subplot(3,1,3);
stem(domain3, range3(1:81));
title('Interpolated Signal');