//################################################################################
//Realizar un programa que comprueba si una cadena leída por teclado comienza por 
//una subcadena introducida por teclado.
//################################################################################
//Análisis
//Leo una cadena y una subcadena por teclado. Obtengo la subcadena de la primera
//cadena con la misma longitud que la segunda cadena (uso la función subcadena). 
//Si son iguales significa que la primera cadena comienza por la segunda.
// Datos de entrada: Dos cadenas
// Información de salida:Mensaje indicando si la primera cadena comienza por 
//la segunda o no.
// Variables: cad, sub (caracter)
//################################################################################
//Diseño


//################################################################################

Proceso ComienzaPor
	Definir cad, subcad Como Caracter;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Escribir Sin Saltar "Introduce una subcadena:";
	Leer subcad;
	Si Subcadena(cad,0,Longitud(subcad)-1)=subcad Entonces
		Escribir "La cadena comienza por la subcadena";
	SiNo
		Escribir "La cadena NO comienza por la subcadena";
	FinSi
FinProceso
