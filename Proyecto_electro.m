#Proyecto de teoría electromagnética
printf("hola puto");
printf("guenas");

x = -2:0.25:2;
y = x;
z= x;
[X,Y,Z] = meshgrid(x);
surf(x,y,x.*exp(-x.^2-(y').^2))
