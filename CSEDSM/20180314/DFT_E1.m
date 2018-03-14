clear all
close all

[y, fs] = audioread('../audio/ring.wav'); %vettore y, freq.camp fs

pc = 1/fs;
nSamp = size(y, 1);
dur = pc*nSamp;

t = [0:pc:dur-pc]';

%normalizzazione del segnale y 
y = y*(1/max(y))*(10^(-(1/20))); %

winSize = 64;
binSize = fs/winSize

%Rotazione del vettore (con l'apice finale)
F = [0:binSize:fs-binSize]'; %da vettore riga a vettore colonna

for k = 1:size(F, 1)/2
fa = F(k)*2*pi;
za = y.*e.^(-i*fa*t);
dft(k, 1) = (abs(sum(za))/size(t,1))*2;
end
 
stem(F(1:size(dft, 1),1), dft);
hold on
plot(F(1:size(dft, 1),1), dft);
hold off
