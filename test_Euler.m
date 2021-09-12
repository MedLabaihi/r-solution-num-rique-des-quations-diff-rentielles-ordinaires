fonctions

t0=input("donner l'instant initial t0 : "); 
y0=input("donner la valeur initiale y0 : "); 
n=input("donner le nombre de points n: "); 
T=input("donner l'instant final T : "); 

[t,Y]=Euler(@f,t0,y0,T,n);

Yexa=Exacte(t0,y0,t); Err=norm(Y-Yexa,'inf');
printf("Erreur globale Euler = %f\n",Err)
plot(t,Yexa,'r-',t,Y,'b*');
legend("Exate","Euler");
title("Méthode d'Euler explicite");
print(" fig1.png")
