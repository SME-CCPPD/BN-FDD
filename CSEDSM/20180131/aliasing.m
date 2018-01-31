fc1 = 100;
fc2 = 10000;
pc1 = 1/fc1;
pc2 = 1/fc2;
dur = 2;
t1 = [-dur/2:pc1:dur/2-pc1];
t2 = [-dur/2:pc2:dur/2-pc2];
n = fc/2;
dif = 48;
f1 = n-dif;
f2 = n+dif;
y11 = cos(t1*f1*2*pi);
y12 = cos(t1*f2*2*pi);
y21 = cos(t2*f1*2*pi);
y22 = cos(t2*f2*2*pi);

subplot(2, 1, 1);
hold on
stairs(t1, y11);
plot(t2, y21);
axis([-0.1 0.1 -1.1 1.1])
hold off
subplot(2, 1, 2);
hold on
stairs(t1, y12);
plot(t2, y22);
axis([-0.1 0.1 -1.1 1.1])
hold off

print('aliasing.jpg', '-djpeg');
