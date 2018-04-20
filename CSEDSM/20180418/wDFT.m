clear all;
close all;

fc = 10000;
pc = 1/fc;

durBig = 1;

t = [-durBig/2:pc:durBig/2-pc];

f = 1000;

p = cos(2*pi*f*t);

m = zeros(1, length(t));

nSamp = durBig*fc;
m(round(nSamp/4):round(nSamp/4*3)) = 1;

BinSize = 1; 
F = [-fc/2:BinSize:fc/2-BinSize];

out = m.*p;

for k = 1:length(F)
fa = F(k)*2*pi;
za = out.*e.^(-i*fa*t);
dft(k, 1) = (abs(sum(za))/length(t))*2;
end

hold on
plot(F, dft);
stem (F, dft);
axis([950 1050]);
title ('rect window DFT');
hold off
