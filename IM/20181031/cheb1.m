x = [-1:0.001:1];

n = 10;

T = zeros(n, length(x));

T(1, :) = 1;

T(2, :) = x;

for k = 3 : n
T(k, :) = 2 * x.*T(k-1, :) - T(k-2, :);
endfor

plot(x, T)
