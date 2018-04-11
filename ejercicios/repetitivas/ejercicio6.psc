//Escribir un programa que imprima todos los números pares entre dos números que se le pidan al usuario.
Proceso NumerosPares
	Definir i,num1,num2 Como Entero;
	Escribir Sin Saltar "Introduce el número 1:";
	Leer num1;
	Escribir Sin Saltar "Introduce el número 2:";
	Leer num2;
	Si num1 % 2 = 1 Entonces
		num1<-num1+1;
	FinSi
	Para i<-num1 Hasta num2 Con Paso 2 Hacer
			Escribir sin saltar i," ";
	FinPara
FinProceso
