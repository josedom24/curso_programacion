//################################################################################
//Calcular la media de tres números pedidos por teclado
//################################################################################
//Análisis
//Tenemos que leer tres números y calcular la media. Suma de los tres partido 3.
//Datos de entrada: los tres números (real)
//Información de salida: la media (real)
//Variables: num1,num2,num3, media (Real).
//################################################################################
//Diseño
//1. Leer los tres nÃºmeros
//2. Calcular la media: (num1+num2+num3)/3
//3. Mostrar la media
//################################################################################

Proceso CalcularMedia
	Definir num1,num2,num3, media Como Real;
	Escribir Sin Saltar "Introduce el número 1:";
	Leer num1;
	Escribir Sin Saltar "Introduce el número 2:";
	Leer num2;
	Escribir Sin Saltar "Introduce el número 3:";
	Leer num3;
	media <- (num1 + num2 + num3) /3;
	Escribir "La media es ",media;
FinProceso
