clear all;
close all;

domain  = -4*pi : pi/5 : 4*pi;

[resp,range] = freqz([2 1],[1 -0.6],domain);

figure1 = figure('Name','Real Part');

plot(range,real(resp));

figure('Name', 'Imaginary part');

plot(range,imag(resp));

figure('Name', 'Absolute Part');

plot(range,abs(resp));
