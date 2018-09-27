//################################################################################
//Escribe un programa que dados dos números, uno real (base) y un entero positivo 
//(exponente), saque por pantalla el resultado de la potencia. No se puede 
//utilizar el operador de potencia.
//################################################################################
//Análisis
//Leo la base y el exponente de una potencia. 
//El exponente me tengo que asegurar que es positivo.
//Para realizar la potencio tengo que acumular el productor de la base tantas veces
//como indique el exponente.
// Datos de entrada: La base y el exponente
// Información de salida:La potencia
// Variables:base,potencia(Real), exponente(entero), i (indice del bucle para)
//################################################################################
//Diseño
//1.- Inicializo el acumulador para multiplicación -> potencia <- 1
//2.- Leer base
//3.- Repetir -> Leer exponente -> hasta que exponente sea positivo
//4.- Desde 1 hasta el exponente
//		5.- Acumulo la multiplicación de la base -> potencia<-potencia*base
//6.- Muestro potencia
//################################################################################

Proceso CalcularPotencia
	Definir base, potencia Como Real;
	Definir exponente Como Entero;
	Definir i Como Entero;
	Escribir Sin Saltar "Dame la base de la potencia:";
	Leer base;
	Repetir
		Escribir Sin Saltar "Dame el exponente de la potencia:";
		Leer exponente;
		Si exponente<0 Entonces
			Escribir "ERROR: El exponente debe ser positivo";
		FinSi
	Hasta Que exponente >= 0;
	potencia <- 1;
	Para i<-1 hasta exponente Hacer
		potencia <- potencia * base;
	FinPara
	Escribir "Potencia:",potencia;
FinProceso
