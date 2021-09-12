function [t,Y]=Euler(f,t0,y0,T,n)
  
  h=T/n;
  t=t0:h:t0+T;
  
  Y(1)=y0; 
  for i=2:n+1
    Y(i)=Y(i-1)+h*f(Y(i-1),t(i-1));
  endfor
endfunction
