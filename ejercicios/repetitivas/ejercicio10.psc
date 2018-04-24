//################################################################################
//Algoritmo que muestre la tabla de multiplicar de los números 1,2,3,4 y 5.
//################################################################################
//Análisis
//Debo repetir 5 veces (desde el número 1 hasta el 5) mostrar 
//la tabla de multiplicar de ese número.
//Como vimos en otro ejercicio para una tabla de multiplicar debemos repetir
//10 veces para mostrar cada línea de la tabla.
//Por lo tanto necesito dos bucles anidados.
// Datos de entrada: Nada
// Información de salida: Las cinco tablas de multiplicar
// Variables:tabla,num(entero)
//################################################################################
//Diseño
//1.- Para tabla desde 1 hasta 5
//		2.-Para num desde 1 hasta 10
//			3.- Mostrar tabla * num = (tabla*num)
//################################################################################

Proceso TablasDeMultiplicar
	Definir tabla,num Como Entero;
	Para tabla<-1 hasta 5 Hacer
		Para num<-1 hasta 10 Hacer
			Escribir tabla," * ",num," = ", tabla*num;
		FinPara
		Esperar Tecla;
	FinPara
FinProceso
