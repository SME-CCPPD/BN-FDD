clear all
close all

[y, fs] = audioread('../audio/ring.wav'); 

pc = 1/fs;
nsamp = size(y, 1);
dur = pc*nsamp;

t = [0:pc:dur-pc]';

%creazione della finestra della DFT
tWinSize = 2000; %grandezza in campioni
tWin = [floor(size(y, 1)/4) floor(size(y, 1)/4)+tWinSize];
y = y*(1/max(y))*(10^(-(1/20))); 
yW = y(tWin(1):tWin(2),1); %porzione segnale y analizzato
tW = t(tWin(1):tWin(2),1);

winSize = 250;
binSize = fs/winSize

F = [0:binSize:fs-binSize]'; 

for k = 1:size(F, 1)/2
fa = F(k)*2*pi;
za = yW.*e.^(-i*fa*tW);
dft(k, 1) = (abs(sum(za))/size(tW,1))*2;
end
 
% visualizzazione DFT in dB
dBdft = 20*log10(dft); 

plot(F(1:size(dft, 1),1), dBdft);
