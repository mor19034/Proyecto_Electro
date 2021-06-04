#Proyecto de teor�a electromagn�tica
clear; close all; clc;

b = 8;
a = 1;
q1 = 1e-9;
q2 = 2e-9;
alp = 10;
epsilon = 8.84e-12;
Po = 5;

 x = 1:1:b;
  teta =2*pi
  phi =pi
  y = (Po.*((sin(teta)*cos(phi))+(sin(teta)*sin(phi))+(cos(teta))))./(epsilon.*(4.*pi).*(x.^2));

figure
plot(x,y)
  xlabel("X");
  ylabel("Y");
  zlabel("Z");
  title("Potencial Dipolo 1",'FontSize',45)
%Grafica Potencial dipolo 3
  x = 1:1:b;
  teta =2*pi
  phi =pi
  y = (a.*(q1+q2).*(cos(teta)))./(epsilon.*(4.*pi).*(x.^2));

figure
plot(x,y)
  xlabel("X");
  ylabel("Y");
  zlabel("Z");
  title("Potencial Dipolo 3",'FontSize',45)
%Grafica Potencial dipolo 4
  x = 1:1:b;
  y = ((1/4)-((x.^2/120).*(((3.*cos(teta).^2)-1)./2))).*((1)./(epsilon.*(4.*pi)));

figure
plot(x,y)
  xlabel("X");
  ylabel("Y");
  zlabel("Z");
  title("Potencial Dipolo 4",'FontSize',45)
%Grafica Campo electrico cilindro
for x = 0:b
  x = linspace(-10,b,11);
  y = x';
  f = (-exp(-(x.^2+y.^2)/alp))/epsilon;
  [px,py] = gradient(f);

endfor
  figure
  contour(x,y,f)
  hold on
  quiver(x,y,px,py)
  hold off
  xlabel("X");
 ylabel("Y");
 zlabel("Z");
 title("Campo electrico Cilindro polarizado",'FontSize',45);

%Grafica densidad volumetrica cilindro polarizado
r1 = linspace(a,b,11);
t = linspace(0,2*pi,11);
[R,T] = meshgrid(r1,t);
X = R.*cos(T);
Y = R.*sin(T);
F = ((-exp(-X.^2/7))./X).*(((2*X.^2)/7)-1);
figure

surf(X,Y,F,R)
colorbar
xlabel("X");
ylabel("Y");
zlabel("Z");
title("Densidad Volumetrica Cilindro polarizado",'FontSize',45);



%Grafica densidad volumetrica esfera polarizada
Q = 3e-9;
eps0 = 8.84e-12;
k = 20;
r1 = linspace(b,2*b,11);
t = linspace(0,2*pi,11);
[R,T] = meshgrid(r1,t);
X = R.*cos(T);
Y = R.*sin(T);
F = (3*X);
figure

surf(X,Y,F,R)
colorbar
xlabel("X");
ylabel("Y");
zlabel("Z");
title("Densidad Volumetrica esfera polarizada",'FontSize',45);

%Grafica D vs d
a = 1;
b = 8;
Q = 3e-9;
eps0 = 8.84e-12;
k = 20;
x = linspace(0,2*b,11);
y1 = (Q./(4*pi*x.^2));
figure
plot(x,y1);
xlabel("Distancia");
ylabel("Dezplazamiento");
title("Dezplazamiento Electrico Vs Distancia",'FontSize',45);


%Grafica Campo vs d
a = 1;
b = 8;
Q = 3e-9;
eps0 = 8.84e-12;
k = 20;
x1 = linspace(0,a,11);
y1 = 0;

x2 = linspace(a,b,11);
y2 = (Q./(4*pi*x.^2));

x3 = linspace(b,2*b,11);
y3 = (Q./(4*pi*x.^2))+((k.*x)./eps0);

x4 = linspace(2*b,30,11);
y4 = (Q./(4*pi*x.^2))+((k.*x)./eps0);
figure

subplot(2,2,1);
plot(x1,y1);
xlabel("Distancia de 0 < a");
ylabel("Campo electrico");
title("Campo Electrico Vs Distancia",'FontSize',25);
subplot(2,2,2);
plot(x2,y2);
xlabel("Distancia de a < r < b");
ylabel("Campo electrico");
title("Campo Electrico Vs Distancia",'FontSize',25);
subplot(2,2,3);
plot(x3,y3);
xlabel("Distancia de b < r < 2b");
ylabel("Campo electrico");
title("Campo Electrico Vs Distancia",'FontSize',25);
subplot(2,2,4);
plot(x4,y4);
xlabel("Distancia de r > 2b");
ylabel("Campo electrico");
title("Campo Electrico Vs Distancia",'FontSize',25);


for x = 0:b
  x = linspace(-10,b,11);
  y = x';
  teta =2*pi
  phi =pi
  f = (Po.*((sin(teta)*cos(phi))+(sin(teta)*sin(phi))+(cos(teta))))./(epsilon.*(4.*pi).*(x.^2+y.^2));
  [px,py] = gradient(f);

endfor
  figure
  contour(x,y,f)
  hold on
  quiver(x,y,px,py)
  hold off
  xlabel("X");
 ylabel("Y");
 zlabel("Z");
 title("Campo electrico dipolo1",'FontSize',45);