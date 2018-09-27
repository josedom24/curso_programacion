//################################################################################
//Programa que lea una cadena por teclado y compruebe si es una letra mayúscula.
//################################################################################
// Análisis
// Pedimos por teclado una cadena 
//y hay que comprobar que todas las letras sean mayúsculas.
// Datos de entrada: cadena (cadena)
// Información de salida: Mensajes de es mayúsculas o no es mayúsculas.
// Variables: cadena (cadena)
//################################################################################
// Diseño
// 1. Leer la cadena
// 2. Si la cadena es igual a la cadena convertida en mayúsculas, 
//	  mostrar "La cadena es mayúsculas"
// 3. En caso contrario mostrar "La cadena no es mayúsculas"
//################################################################################

Proceso EsMayusuculas
	Definir cad como Cadena;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Si cad=Mayusculas(cad) Entonces
		Escribir "La cadena es mayúsculas";
	SiNo
		Escribir "La cadena no es mayúsculas";
	FinSi
FinProceso