clc
clear all
close all
syms x mystep(x);
syms y myramp(y);

domain = -20:0.01:20;

mystep(x) = simplify(x>0);
myramp(y) = y<0 + (y>0)*y;

plot(domain, mystep(domain));
hold on;
plot(domain, myramp(domain));
hold off;

