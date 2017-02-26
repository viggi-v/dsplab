clear all;
close all;
a = [0.2,0.4,0.6,0.8];
x = 1:9;

[xx yy] = meshgrid(x,a);

zz = yy.^xx;
fig1 = figure();
fig1.Name = '3D Plot';

title('aaa');
plot3(xx,yy,zz);

z1 = xcorr(zz(1,:),4);
z2 = xcorr(zz(2,:),4);
z3 = xcorr(zz(3,:),4);
z4 = xcorr(zz(4,:),4);

[corr_mat,t1] = xcorr(zz',4);

fig2 = figure();
fig2.Name = 'Auto Correlation vectors';
[xx_1 yy_1] = meshgrid(1:16,1:9);
plot3(xx_1,yy_1,corr_mat)
