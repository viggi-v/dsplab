clear all;
close all;

c2 = [1 -1];
c3 = [1 1 -1];
c4 = [1 1 1 -1];
c5 = [1 1 1 -1 1];
c7 = [1 1 1 -1 -1 1 -1];
c11 = [1 1 1 -1 -1 -1 1 -1 -1 1 -1];
c13 = [ 1 1 1 1 1 -1 -1 1 1 -1 1 -1 1];

c12 = kron (c2,c3);
[ c12_cron , t12 ] = xcorr(c12);

c22 = kron (c2,c11);
[ c22_cron , t22 ] = xcorr(c22);

c35 = kron (c5,c7);
[ c35_cron , t35 ] = xcorr(c35);

c143 = kron (c11,c13);
[ c143_cron , t143 ] = xcorr(c143);

figure();
plot(t12,c12_cron);

figure();
plot(t22,c22_cron);

figure();
plot(t35,c35_cron);

figure();
plot(t143,c143_cron);

fig = figure();
fig.Name = 'Ambiguity Function';
%ambFun = ambgfun(c13,1000,1000);
%[afmag,delay,doppler] =
ambgfun(c13,1000,1000);


