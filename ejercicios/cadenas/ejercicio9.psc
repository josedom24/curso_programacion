//################################################################################
//Realizar un programa que compruebe si una cadena contiene una subcadena.
// Las dos cadenas se introducen por teclado.
//################################################################################
//Análisis
//Leo dos cadenas. Tengo que ir comprobando todas las subcadenas de la primera 
//cadena que tengan la misma longitud que la segunda. Si alguna de estas subcadenas
// es igual a la segunda, la primera cadena contiene la segunda.
// Datos de entrada: Cadena de caracteres y subcadena a buscar.
// Información de salida: Mensaje indicadndo si la cadea contiene la subcadena o no.
// Variables:cad, subcad  (carácter), num_subcadenas,nsubc (entero), 
//			 indicador (lógico)
//################################################################################

Proceso ContieneSubCadena
	Definir cad, subcad Como Caracter;
	Definir num_subcadenas,nsubc Como Entero;
	Definir indicador Como Logico;
	indicador<-Falso;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Escribir Sin Saltar "Introduce una subcadena:";
	Leer subcad;
	num_subcadenas<- Longitud(cad)-Longitud(subcad)+1;
	Para nsubc<-0 hasta num_subcadenas-1 Hacer
		Si Subcadena(cad,nsubc,nsubc+Longitud(subcad)-1)=subcad Entonces
			indicador<-Verdadero;
		FinSi
	FinPara
	Si indicador Entonces
		Escribir "La cadena contiene la subcadena.";
	SiNo
		Escribir "La cadena no contiene la subcadena.";
	FinSi
FinProceso
