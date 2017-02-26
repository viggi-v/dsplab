clear all;
close all;

domain  = -pi : 2*pi/255 : pi;
input = [1 2 3 4 5 6 7 8 9];
exp_seq = exp([1:9].*i*pi/4);
input2 = input.*exp_seq;

[resp,range] = freqz(input,[1],domain);
[resp_1,range_1] = freqz(input2, [1], domain);
figure1 = figure('Name','Amplitude Response');

plot(range,abs(resp));
hold on;
plot(range,abs(resp_1));
hold off;
legend('Original','Multiplied with e^jwn0');
figure('Name', 'Phase Response');
plot(range,angle(resp));
hold on;
plot(range,angle(resp_1));
hold off;
legend('Original','Multiplied with e^jwn0');
