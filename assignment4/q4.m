clear all;
close all;

% To confirm convolution in one domain is multiplication in the other

x1 = [1 3 5 7 9 11 13 15 17];
x2 = [1 -2 3 -2 1];

freq = -2*pi:pi/255:2*pi;

[X1,range1] = freqz(x1,[1],freq);

[X2,range2] = freqz(x2,[1],freq);

result_1 = X1.*X2;

result_2_time = conv(x1,x2);
[result_2, range_2] = freqz(result_2_time, [1], freq);

plot(range1,abs(result_1));
figure();
plot(range1,abs(result_2));

