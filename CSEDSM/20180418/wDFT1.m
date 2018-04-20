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

BinSize = 0.01; 
F = [-fc/2:BinSize:fc/2-BinSize];

out = m.*p;

side = 2000;
where = round((f+fc/2)/BinSize);


for k = where-side:where+side;
fa = F(k)*2*pi;
za = out.*e.^(-i*fa*t);
dft(1, k) = (abs(sum(za))/length(t))*2;
end

dftdB = 20*log10(dft);

plot(F(where-side:where+side), dftdB(where-side:end));
title('rect window DFT (dB)')
axis([980 1020])
