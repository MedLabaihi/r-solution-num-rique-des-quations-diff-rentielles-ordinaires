1;
function f=f(y,t)
  f=y+t;
endfunction
function Yexa=Exacte(t0,y0,t)
  Yexa=-1-t+(y0+t0+1)*exp(t-t0);
endfunction