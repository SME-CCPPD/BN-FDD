clear all
close all

[y, fs] = audioread('../audio/ring.wav'); 

pc = 1/fs;
nsamp = size(y, 1);
dur = pc*nsamp;

t = [0:pc:dur-pc]';

tWinSize = 2000;
tWin = [floor(size(y, 1)/4) floor(size(y, 1)/4)+tWinSize-1];
y = y*(1/max(y))*(10^(-(1/20))); 

%creazione finestra di Hann
Hann = -0.5*cos((2*pi/tWinSize)*(0:tWinSize-1))'+0.5;

yW = y(tWin(1):tWin(2),1).*Hann; 
tW = t(tWin(1):tWin(2),1);

winSize = 250;
binSize = fs/winSize

F = [0:binSize:fs-binSize]'; 

for k = 1:size(F, 1)/2
fa = F(k)*2*pi;
za = yW.*e.^(-i*fa*tW);
dft(k, 1) = (abs(sum(za))/size(tW,1))*4;
end
 
dBdft = 20*log10(dft); 

subplot(2, 1, 1)
plot(tW, yW, tW, Hann);
subplot(2, 1, 2)
plot(F(1:size(dft, 1), 1), dBdft);
