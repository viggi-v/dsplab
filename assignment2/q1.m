clear all;
close all;
x = [3,2,1,-2,1,0,-4,0,3];
h = [1,-2,3,-4,3,2,1];

answer = conv(x,h);

plot(1:5,answer);
