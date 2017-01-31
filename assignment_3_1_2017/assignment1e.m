close all;
clear all;
domain  = -50:50;

myFunction = @(K,n,C)(K.*n.*(C.^n));

subplot(3,1,1);
plot(domain,myFunction(2,domain,-0.5),domain,myFunction(5,domain,-0.5));
title('For c = -0.5');
legend('K=2','K=5');

subplot(3,1,2);
plot(domain,myFunction(2,domain,0.9),domain,myFunction(5,domain,0.9));
title('For c = 0.9');
legend('K=2','K=5');

subplot(3,1,3);
plot(domain,myFunction(2,domain,3.1),domain,myFunction(5,domain,3.1));
title('For c = 2');
legend('K=2','K=5');