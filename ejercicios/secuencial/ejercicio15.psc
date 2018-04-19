//################################################################################
//Dadas dos variables numÃ©ricas A y B, que el usuario debe teclear, 
//se pide realizar un algoritmo que intercambie los valores de ambas variables 
//y muestre cuanto valen al final las dos variables.
//################################################################################
//Análisis
//Se piden el valor de dos variables (el tipo puede ser el que queramos). 
//Hay que intercambiar los valores de las variables
//Datos de entrada: dos números en dos variables (entero).
//Información de salida: Las dos variables pero con los datos cambiados (entero)
//Variables: a,b (entero).
//################################################################################
//Diseño
//1. Leer los dos números
//2. Intercambio los valores. Necesito una variable auxiliar (aux). 
//	 Asigno "a" en "aux", "b" en "a" y "aux" en "b"
//3. Mostrar "a" y "b"
//################################################################################

Proceso IntercambiarVariables
	Definir a,b,aux como Entero;
	Escribir "Introduce valor de la variable A:";
	Leer a;
	Escribir "Introduce valor de la variable B:";
	Leer b;
	aux <- a;
	a <- b;
	b <- aux;
	Escribir "Nuevo valor de A:", a;
	Escribir "Nuevo valor de B:", b;
FinProceso