clear all;
close all;

seq1 = [104.89 163.15 171.04 344.55 241.31 185.75 282.58 147.97 209.41 79.19];
seq1 = seq1.* pi/180;


[corr1 dom1]= xcorr(seq1);

plot(dom1, corr1);

seq2 = [115.84 114.84 248.44 213.38 123.12 154.90 140.20 12.75 149.65 303.48 121.65];
seq2 = seq2.* pi/180;


[corr2 dom2]= xcorr(seq2);
figure();
plot(dom2, corr2);