w = 3.5;
t = [-10:0.1:10];

z = cos(w*t);

F = [-10:0.1:10];

dft = zeros(size(F));

for k = 1:size(F, 2)
fa = F(k);
za = z.*e.^(-i*fa*t);
dft(k) = abs(sum(za))/size(F,2);
end

plot(F, dft);
