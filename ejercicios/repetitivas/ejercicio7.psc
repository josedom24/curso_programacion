//################################################################################
//Realizar una algoritmo que muestre la tabla de multiplicar de un número 
//introducido por teclado.
//################################################################################
//Análisis
//Leemos el número del que queremos mostrar la tabla
//Necesitamos un contador para contar de 1 a 10
//Tenemos que repetir 10 veces -> En cada vuelta debemos mostrar:
// el contador * el numero = resultado de la multiplicación
// Datos de entrada: El número de la tabla, y un contador de 1 a 10.
// Información de salida:Las 10 operaciones de la tabla de multiplicación
// Variables:tabla,num (enteros)
//################################################################################
//Diseño
//1.- Leer tabla
//2.- DEsde numero de 1 a 10
//	3.- Mostrar num * tabla = (num*tabla)
//################################################################################

Proceso TablaMultiplicar
	Definir tabla,i Como Entero;
	Escribir Sin Saltar "¿De qué número quieres mostrar la tabla de multiplicar?:";
	Leer tabla;
	Para num<-1 hasta 10 Hacer
		Escribir num," * ",tabla," = ",num*tabla;
	FinPara
FinProceso
