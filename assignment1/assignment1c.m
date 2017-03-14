% Question 1C and 1D
% Generating the complex sequence given

domain = -50:50;

c = -1/12 + pi*i/6;
c2=  1/12 + pi*i/6;

range1 = 3*exp(domain.*c);
range2 = 5*exp(domain.*c);
range3 = 3*exp(domain.*c2);
subplot(3,1,1);
stem(domain, real(range1),'r');
hold on;
stem(domain,real(range2),'b');
title('Real Parts of k=3 and k=5 in y[n]=k*e^cn');
legend('k=3','k=5');


subplot(3,1,2);
stem(domain, imag(range1),'r');
hold on;
stem(domain, imag(range2),'b');
title('Imag Parts of k=3 and k=5 in y[n]=k*e^cn');
legend('k=3','k=5');

subplot(3,1,3);
stem(domain, real(range3),'r');
hold on;
stem(domain, imag(range3),'b');
title('Real and imaginary Parts of k=3 in y[n]=k*e^cn with a positive real part for c');
legend('real','imaginary');