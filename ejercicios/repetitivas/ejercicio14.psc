//################################################################################
//Una persona se encuentra en el kilómetro 70 de una carretera, otra se encuentra 
//en el km 150, los coches tienen sentido opuesto y tienen la misma velocidad. 
//Realizar un programa para determinar en qué kilómetro de esa carretera se 
//encontrarán.
//################################################################################
//Análisis
//tengo que calcular en que km se van a encontrar los coches. sabemos que van en
//sentido opuesto por lo tanto, si llevan la misma velocidad, el primero va a ir
//incrementando el km donde se encuentra y el segundo va a ir decrementándolo.
//Cuando coincidan en el mismo km, podemos considerar que se han encontrado.
// Datos de entrada: Nada, vamos a inicializar las variables donde guardamos los km 
// Información de salida: El km donde se encuentran.
// Variables: km1,km2 (enteros)
//################################################################################
//Diseño
//1.- Inicializao las variables kms
//2.- Mientras km1<>km2
//		3.- Incremento km1
//		4.- Incremento km2
//5.- Mostrar en el km que se encuentran
//################################################################################

Proceso CalcularKm
	Definir km1,km2 Como Entero;
	km1<-70;
	km2<-150;
	Mientras km1<>km2 Hacer
		km1<-km1+1;
		km2<-km2-1;
	FinMientras
	
	Escribir "Se encuentran en el km:",km1;
FinProceso
