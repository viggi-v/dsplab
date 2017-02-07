clear all;
close all;

domain = 0:0.001:5;
frequency = round(domain);

range = cos(frequency.*domain.*2*pi) + i*sin(frequency.*domain.*2*pi);
[corr, corr_dom] = xcorr(range);

plot(domain, range);
figure();
%figure.Name('Corr');
plot(corr_dom,corr);