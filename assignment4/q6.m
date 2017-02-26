% Time reversal Property

clear all;
close all;

num = [1 2 3 4];

dom = -pi:2*pi/255:pi;

[org_dtft, range1] = freqz(num, [1], dom);
[flipped_dtft, range2] = freqz(flip(num),[1], dom);

figure('Name', 'Comparing Amplitudes');
plot(range1, abs(org_dtft));
hold on;
plot(range1, abs(flipped_dtft));
hold off;

figure('Name', 'Comparing Angles');
plot(range1,angle(org_dtft));
hold on;
plot(range1,angle(flipped_dtft));
hold off;