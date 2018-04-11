fc = 1000;
pc = 1/fc;
dur = 0.1;

t = [0:pc:dur-pc];

freq = 0;

y = cos(freq*2*pi*t);

plot(t, y);
