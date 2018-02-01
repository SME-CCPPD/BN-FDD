%DFT con numeri reali
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
DST = zeros(size(F));

for k = 1:size(F, 2)
fa = F(k);
ya_cos = cos(fa*2*pi*t);
ya_sin = sin(fa*2*pi*t);

DCT(k) = sum(y.*ya_cos)/size(F, 2);
DST(k) = sum(y.*ya_sin)/size(F, 2);
end

PHI = atan2(-DST, DCT);
PHI(601)

DFT = cos(phi)*DCT.-sin(phi)*DST;

subplot(3, 1, 1)
plot(F, DCT, F, DST);
subplot(3, 1, 2)
plot(F, DFT);
subplot(3, 1, 3)
plot(F, unwrap(PHI));
print('DFT_reale.jpg', '-djpeg');
