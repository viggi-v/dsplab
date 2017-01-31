close all
domain = -20:0.001:20;

A = rand(1,5)*4;
phi = rand(1,5)*2*pi;
colors = ['g','r','b','k','c'];
hold on;
for i=1:5
  plot(domain, A(i).*sin(domain+phi(i)),colors(i));
end;

