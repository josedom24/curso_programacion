//################################################################################
//Realizar un programa que dada una cadena de caracteres por caracteres, genere 
//otra cadena resultado de invertir la primera.
//################################################################################
//Análisis
//Leemos una cadena, la recorremos desde el final al principio y cada carácter 
//lo vamos concatenando con una nueva cadena, que inicialmente tendrá como valor
//la cadena vacía­.
// Datos de entrada: Una cadena de caracteres.
// Información de salida: La cadena invertida.
// Variables: cad,invertida (Caracter)
//################################################################################

Proceso CadenaInvertida
	Definir cad,invertida Como Caracter;
	Definir car como Entero;
	invertida<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;

	Para car<-Longitud(cad)-1 hasta 0 Con Paso -1 Hacer
		invertida<-concatenar(invertida,Subcadena(cad,car,car));
	FinPara
	Escribir "La cadena invertida es:",invertida;
FinProceso
