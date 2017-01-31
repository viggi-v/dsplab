x = [1,2,3,4,5];
h = [2,2,0,1,1];

sig1 = conv(x,h);
sig2 = cconv(x,h);
plot(1:9,sig1,1:9,sig2);