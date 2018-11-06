step = 0.001;
x = [-1:step:1];

n = 10;

T = zeros(n, length(x));

T(1, :) = 1;

T(2, :) = x;

for k = 3 : n
T(k, :) = 2 * x.*T(k-1, :) - T(k-2, :);
endfor

time = [0:step:1];

hSize = length(x)/2 - 1;

f = 1;

idx = round(hSize * sin(2*pi*f*time) + hSize) + 1;

plot(time, T(5, idx))
