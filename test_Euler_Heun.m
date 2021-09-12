fonctions

t0=input("donner l'instant initial t0 : "); 
y0=input("donner la valeur initiale y0 : "); 
n=input("donner le nombre de points n: "); 
T=input("donner l'instant final T : "); 

[t,Y]=Euler(@f,t0,y0,T,n);
[t,Yh]=Heun(@f,t0,y0,T,n);

Yexa=Exacte(t0,y0,t);
Err1=norm(Y-Yexa,'inf');
Err2=norm(Yh-Yexa,'inf');

printf("Erreur globale Euler = %f\n",Err1)
printf("Erreur globale Heun = %f\n",Err2)
plot(t,Yexa,'r-',t,Y,'b*',t,Yh,'ko');
legend("Exate","Euler","Heun");
title("Resolution de E.D. par Euler Explicite et Heun");
print(" fig2.png")
