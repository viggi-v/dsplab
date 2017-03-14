clear all;
close all;

for p = 2:4
    phi = 360/p;
    answer = [];
    for i = 1:p
        segment = zeros(1,p);
        delPhi = phi * (p-1) * (i-1);
        for j = 1:length(segment)
            segment(j) = mod((j-1)*delPhi,360);
        end;
        answer = cat(2, answer, segment);
    end;
    answer = answer.* pi/180;
    [corr, dom ] = xcorr(answer);
    plot(dom, corr);
    hold on;
end;
legend('p=2','p=3','p=4','p=5','p=6','p=7','p=8');

