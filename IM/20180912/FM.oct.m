clear all
close all
t=[0: 0.0001: 1];
f=1000;
wp=f*2*pi;
A=0.8;
y= A*cos(wp*t);
plot(t,y)
figure(2)
stem(t,y)
wm=wp*3;
I=3;
Ix=I*(wp/(2*pi));
y=A*cos(wp*t+(Ix*cos(wm*t)));
figure (3)
plot (t,y)
F=[0: 10000];
Ft=fft(y);
figure (4)
plot (F, 2*abs(Ft)./size(t, 2))
axis([0 30])
