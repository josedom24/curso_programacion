Proceso Factorial
	Definir num,i,contador Como Entero;
	Definir resultado Como Real;
	resultado <- 1;
	Escribir Sin Saltar "Dime un número:";
	Leer num;
	contador <- 2;
	Mientras contador<=num Hacer
		resultado <- resultado * contador;
		contador <- contador + 1;
	FinMientras
	Escribir "El resultado es ", resultado;
FinProceso
