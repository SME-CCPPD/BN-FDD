%DCT descrete cosine transform
fc = 1000;
pc = 1/1000;
dur = 2;
t = [-dur/2: pc: dur/2-pc];
f = 100;
w = f*2*pi;
phi = pi/7;
y = cos(w*t+phi);

binSize = 1;
F = [-fc/2:binSize:fc/2-binSize];

DCT = zeros(size(F));

for k = 1:size(F, 2)
fa = F(k);
ya =cos(fa*2*pi*t);

DCT(k) = sum(y.*ya)/size(F, 2);
end

plot(F, DCT);
