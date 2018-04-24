//################################################################################
//Escribir un programa que imprima todos los números pares entre dos números que 
//se le pidan al usuario.
//################################################################################
//Análisis
//Leemos un número. Si es impar, le sumo 1 y ya es par. Leemos el segundo número.
//Escribo el número desde el primero hasta el segundo de dos en dos.
// Datos de entrada: dos números
// Información de salida:Los números pares que hay entre los dos anteriores
// Variables:num, num1,num2 (entero)
//################################################################################
//Diseño
//1.- Leer num1,num2
//2.- Si num1 es impar -> num1=num1+1
//3.- Desde num1 hasta num2 de 2 en 2
//		4.- Escribir el número
//################################################################################

Proceso NumerosPares
	Definir num,num1,num2 Como Entero;
	Escribir Sin Saltar "Introduce el número 1:";
	Leer num1;
	Escribir Sin Saltar "Introduce el número 2:";
	Leer num2;
	Si num1 % 2 = 1 Entonces
		num1<-num1+1;
	FinSi
	Para num<-num1 Hasta num2 Con Paso 2 Hacer
			Escribir sin saltar num," ";
	FinPara
FinProceso
