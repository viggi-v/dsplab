clear all;
close all;
domain = 0:0.0001:10;

signal = @(x) 10- 10*floor(mod(floor(x/0.625),4)/3);

plot(domain, signal(domain));