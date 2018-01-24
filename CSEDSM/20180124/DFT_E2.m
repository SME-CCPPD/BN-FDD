fc = 100; %frequenza di campionamento in Hz

SampInc = 1/fc;	

f = 16;%Hz

w = f*2*pi;

t = [0:SampInc:100];

z = cos(w*t);

BinSize = 0.1; 

F = [0:BinSize:fc-BinSize];

dft = zeros(size(F));

for k = 1:size(F, 2)
wa = F(k)*2*pi;
za = z.*e.^(-i*wa*t);
dft(k) = abs(sum(za))/size(t,2);
end

plot(F, dft);
