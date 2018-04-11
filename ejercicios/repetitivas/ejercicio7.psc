//Realizar una algoritmo que muestre la tabla de multiplicar de un número introducido por teclado.
Proceso TablaMultiplicar
	Definir num,i Como Entero;
	Escribir Sin Saltar "¿De qué número quieres mostrar la tabla de multiplicar?:";
	Leer num;
	Para i<-1 hasta 10 Hacer
		Escribir i," * ",num," = ",i*num;
	FinPara
FinProceso
