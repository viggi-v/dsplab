clear all;
close all;

x1 = [1 2 3 4 5 6];
x2 = [1 -2 3 3 -2 1];

result1 = fft(cconv(x1,x2,6));

X1 = fft(x1);
X2 = fft(x2);
result2 = X1.*X2;
plot(1:length(result1),result1);
hold on;
plot(1:length(result2),result2);