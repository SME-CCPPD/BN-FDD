%DFT con numeri reali
fc = 1000;
pc = 1/1000;
dur = 2;
t = [-dur/2: pc: dur/2-pc];
f = 2;
w = f*2*pi;
phi = pi/5;
y = cos(w*t+phi);

ycos = cos(phi)*cos(w*t);
ysin = -sin(phi)*sin(w*t);

ysomma = ycos.+ysin;

subplot(2, 1, 1);
plot(t, y, 'r');
grid on
subplot(2, 1, 2);
plot(t, ycos,'b', t, ysin,'g', t, ysomma,'r');
grid on

print('somma_trig.jpg', '-djpeg');
