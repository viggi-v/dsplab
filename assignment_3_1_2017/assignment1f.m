range = -10:0.001:10;

sin_series = 5*sin(range.*2*pi + pi/4);

plot(range,sin_series);
grid on;