fc = 1000;
pc = 1/fc;
dur = 0.1;

t = [0:pc:dur-pc];

freq = 0;
f1 = 12;

y = (cos(freq*pi*2*t)+ cos(f1*2*pi*t))./2;

plot(t, y);

