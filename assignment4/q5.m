clear all;
close all;

% Modulation property
dom = -pi:2*pi/255:pi;

x1 = [1 3 5 7 9 11 13 15 17];
x2 = [1 -1 1 -1 1 -1 1 -1 1];

prod = x1.*x2;
[result_1, range] = freqz(prod,[1],dom);
figure('Name', 'Multiply then transform');
plot(range, result_1);
X1 = freqz(x1,[1],dom);
X2 = freqz(x2,[1],dom);


figure('Name','Transform then Convolve');
result_2 = conv(X1,X2);
plot(1:511,result_2)