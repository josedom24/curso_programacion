Proceso Factorial
	Definir num,i Como Entero;
	Definir resultado Como Real;
	resultado <- 1;
	Escribir Sin Saltar "Dime un número:";
	Leer num;
	Para i<-2 Hasta num Hacer
		resultado <- resultado * i;
	FinPara
	Escribir "El resultado es ", resultado;
FinProceso
