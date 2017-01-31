t = -10:10;
subplot(2,1,1);
stem(t,rectangularPulse(-5,5,t));
title('Rectangular Pulse');
subplot(2,1,2);
stem(t,triangularPulse(-5,0,5,t));
title('Triangular Pulse');