//################################################################################
//Escribir por pantalla cada carácter de una cadena introducida por teclado.
//################################################################################
//Análisis
//Leemos una cadena y tenemos que recorrerla (necesito un bucle que vaya desde la 
//posición 0 hasta la longitud de la cadena menos 1. En cada iteración mostramos
//un carácter (utilizamos la función subcadena).
// Datos de entrada:La cadena
// Información de salida: Cada uno de los caracteres de la cadena
// Variables: cad (caracter), posicion (entero)
//################################################################################

Proceso EscribirCaracteres
	Definir cad Como Caracter;
	Definir posicion Como Entero;
	Escribir "Introduce una cadena:";
	Leer cad;
	Para posicion<-0 hasta Longitud(cad)-1 Hacer
		Escribir Subcadena(cad,posicion,posicion);
	FinPara
FinProceso
