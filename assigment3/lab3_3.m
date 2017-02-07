clear all;
close all;

xa = [1 1];
xb = [1 -1];

corr_1 = xcorr(xa);
corr_2 = xcorr(xb);

for i = 1:6
   temp1 = cat(2,xa,xb);
   temp2 = cat(2,xa,xb.*-1);
   temp_corr_1 = cat(2,corr_1,corr_2);
   temp_corr_2 = cat(2,corr_1,corr_2.*-1); 
   xa = temp1;
   xb = temp2;
   corr_1 = temp_corr_1;
   corr_2 = temp_corr_2;
end;

plot (1:192,corr_1);
figure();
plot (1:192,corr_2);