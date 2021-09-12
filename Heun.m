function [t,Yh]= Heun(f,t0,y0,T,n)
  
  h=T/n;
  t=t0:h:t0+T;
  
  Yh(1)=y0; 
  for i=2:n+1
    Yh(i)=Yh(i-1)+h/2*[f(Yh(i-1),t(i-1))+f(Yh(i-1)+h*f(Yh(i-1),t(i-1)),t(i))];
  endfor
endfunction
