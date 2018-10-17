t=[0:0.001:1];
A=1;
f=3;
w=f*2*pi;
x=A*cos(w*t);
%creiamo la tavola di distorsione
wsize=4096;%dimensione della tavola
afact=2/wsize;%step o fattore angolare y=afact*x
tav=[-1:afact:1-afact];%tavola
size (tav)
y=zeros(size(x));%creiamo una tavola vuota
p=zeros(size(x));%creiamo una tavola vuota
for k=1:size(t,2)
idx=round((x(k)*((wsize-1)/2))+((wsize-1)/2))+1;
y(k)=tav(idx);
p(k)=k;%
endfor
plot (t, y)%Uscita della tavola
figure(2)
plot (p, y)%Uscita della tavola con gli indici del fasore
figure(3)
plot (t, p)%uscita del fasore