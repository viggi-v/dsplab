clear all;
close all;

x1 = [1 2 3 2 1];
x2 = [1 2 0 -2 -1];
x3 = [1+1i 2+2i 3+4i 2+2i 1+1i];
x4 = [1+1i 2+2i 0 -2+2i -1+1i];

figure('Name', 'Comparing Amplitudes');

plot(-2:2,abs(x1));
hold on;
plot(-2:2,abs(x2));
plot(-2:2,abs(x3));
plot(-2:2,abs(x4));
hold off;
legend('x1','x2','x3','x4');


figure('Name', 'Comparing Angles');

plot(-2:2,angle(x1));
hold on;
plot(-2:2,angle(x2));
plot(-2:2,angle(x3));
plot(-2:2,angle(x4));
hold off;
legend('x1','x2','x3','x4');
