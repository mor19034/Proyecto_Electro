#Proyecto de teor�a electromagn�tica
printf("hola puto");
printf("guenas");

r = 10;
q = 9;
alp = 10;
epsilon = -1.87e+04;

for x=1:r
  x = 1:1:r;
  disp("Numero x"),disp(x)
  y = (-exp(-x.^2/alp))/epsilon;
  subplot(2,2,1)
  plot(x,y)
  disp ("valor funcion"),disp(y)
  
endfor
  

  