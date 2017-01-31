domain = 1:0.01:50;
answer = 0*domain;
for i=1:2:100
    answer = answer+sin(i*domain)/i;
end
%answer = sin(domain)+ sin(3*domain)/3 + sin(5*domain)/5;
plot(domain,answer);