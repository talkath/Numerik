function [v]=myQuadraturSum1D(f,w,p,a,b,N)
H=(b-a)/N %Abstand teilintervalle
p=p.*H.+a %Anpassen der Stützstellen auf H
v=0;
for i=1:N
  d=f(p);
  I=dot(w,d)*H;
  v=v+I;
  p=p.+H;
endfor
endfunction
