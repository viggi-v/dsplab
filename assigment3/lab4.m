clear all;
close all;

domain = 0:0.001:5;
frequency = domain.*2;

range = cos(frequency.*domain.*2*pi) + i*sin(frequency.*domain.*2*pi);
[corr, corr_dom] = xcorr(range);

plot(domain, range);
fig = figure();
plot(corr_dom,corr);