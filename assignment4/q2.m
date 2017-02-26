clear all;
close all;

domain  = -pi : 2*pi/255 : pi;
input = [1 2 3 4 5 6 7 8 9];
shifted_input = [zeros(1,10) input];
[resp,range] = freqz(input,[1],domain);
[resp_shift,range_shift] = freqz(shifted_input, [1], domain);
figure1 = figure('Name','Amplitude Response');

plot(range,abs(resp));
hold on;
plot(range,abs(resp_shift));
hold off;
legend('Original','Shifted by 10');
figure('Name', 'Phase Response');
plot(range,angle(resp));
hold on;
plot(range,angle(resp_shift));
hold off;
legend('Original','Shifted by 10');
