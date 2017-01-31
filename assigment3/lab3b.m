clear all;
close all;

c2 = [1 -1];
c3 = [1 1 -1];
c4 = [1 1 1 -1];
c5 = [1 1 1 -1 1];
c7 = [1 1 1 -1 -1 1 -1];
c11 = [1 1 1 -1 -1 -1 1 -1 -1 1 -1];
c13 = [ 1 1 1 1 1 -1 -1 1 1 -1 1 -1 1];


[cc2,t2] = xcorr(c2);
[cc3,t3] = xcorr(c3);
[cc4,t4] = xcorr(c4);
[cc5,t5] = xcorr(c5);
[cc7,t7] = xcorr(c7);
[cc11,t11] = xcorr(c11);
[cc13,t13] = xcorr(c13);

subplot(7,1,1);
stem(t2,cc2);

subplot(7,1,2);
stem(t3,cc3);

subplot(7,1,3);
stem(t4,cc4);

subplot(7,1,4);
stem(t5,cc5);

subplot(7,1,5);
stem(t7,cc7);

subplot(7,1,6);
stem(t11,cc11);


subplot(7,1,7);
stem(t13,cc13);
