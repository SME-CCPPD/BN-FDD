t=[0:0.001:1];
Astep = (0.95-0.2) / length(t);
A=[0.2:Astep:0.95-Astep];
f=3;
w=f*2*pi;
x=A.*cos(w*t);
%creiamo la tavola di distorsione
wsize=4096;%dimensione della tavola

dfact=0.7;
aletta=round((1-dfact)*wsize);
tavleft=ones(1,aletta)*-dfact;
tavright=ones(1,aletta)*+dfact;
afact=((dfact*2)/(wsize-(aletta*2)));%step o fattore angolare y=afact*x
tav=[tavleft [-dfact:afact:dfact-afact] tavright];%tavola
size (tav)
y=zeros(size(x));%creiamo una tavola vuota
p=zeros(size(x));%creiamo una tavola vuota
for k=1:size(t,2)
idx=round((x(k)*((wsize-1)/2))+((wsize-1)/2))+1;
y(k)=tav(idx);
p(k)=k;%
endfor
plot (t, y)%Uscita della tavola
axis([0 1 -1 1])
print("dnl2_1.png", "-dpng")
figure(2)
plot (p, y)%Uscita della tavola con gli indici del fasore
axis([0 1001 -1 1])
print("dnl2_2.png", "-dpng")
figure(3)
plot (t, p)%uscita del fasore
print("dnl2_3.png", "-dpng")
figure(4)
plot(tav)
print("dnl2_4.png", "-dpng")
