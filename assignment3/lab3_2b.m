clear all;
close all;
c4 = [1 1 1 -1];
c4_shifted = [-1 1 1 1];

c4_comp = xcorr(c4,c4_shifted,5);
plot(1:11,c4_comp);
