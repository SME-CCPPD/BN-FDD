t= [0: 0.001: 1];
f= 2;
wp= f*2*pi;
A= 0.8;
y= A*cos(wp*t);
plot(t,y)
figure(2)
stem(t,y)
