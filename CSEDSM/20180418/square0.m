clear all
close all

fc = 10000;
pc = 1/fc;

dur = 1;

f = 1;

t = [-dur/2:pc:dur/2-pc];

s0 = zeros(1, length(t));
s1 = zeros(1, length(t));
s2 = zeros(1, length(t));
s3 = zeros(1, length(t));

subplot(4, 1, 1)
hold on
for k = 1:2:5
amp = 1/k;
c = amp*sin(2*pi*f*k*t);
p1 = plot(t, c);
set(p1, 'linewidth', 0.5)
s0 = s0.+c;
end
p2 = plot(t, s0, 'r');
set(p2, 'linewidth', 2);
title('square 3 odd harmonics')
hold off;

subplot(4, 1, 2)
hold on
for k = 1:2:15
amp = 1/k;
c = amp*sin(2*pi*f*k*t);
p1 = plot(t, c);
set(p1, 'linewidth', 0.5)
s1 = s1.+c;
end
p2 = plot(t, s1, 'r');
set(p2, 'linewidth', 2);
title('square 8 odd harmonics')
hold off;

subplot(4, 1, 3)
hold on
for k = 1:2:100;
amp = 1/k;
c = amp*sin(2*pi*f*k*t);
p1 = plot(t, c);
set(p1, 'linewidth', 0.5)
s2 = s2.+c;
end
p2 = plot(t, s2, 'r');
set(p2, 'linewidth', 2);
title('square 50 odd harmonics')
hold off;

subplot(4, 1, 4)
hold on
for k = 1:5
amp = 1/k;
c = amp*sin(2*pi*f*k*t);
p1 = plot(t, c);
set(p1, 'linewidth', 0.5)
s3 = s3.+c;
end
p2 = plot(t, s3, 'r');
set(p2, 'linewidth', 2);
title('sawtooth')
hold off;

