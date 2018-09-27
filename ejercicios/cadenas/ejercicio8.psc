//################################################################################
//Realizar un programa que lea una cadena por teclado y convierta las mayúsculas a 
//minúsculas y viceversa.
//################################################################################
//Análisis
//Leo un cadena, la recorro y voy copiando cada carácter a otra cadena, teniendo en 
// cuenta que si es mayúsculas la convierto a minúsculas y viceversa.
// Datos de entrada: Cadena de caracteres
// Información de salida: Cadena con el cambio de mayúsculas a minúsculas y viceversa.
// Variables:cad, newcad  (carácter), posicion (entero)
//################################################################################

Proceso ConvertirMayMin
	Definir cad,newcad Como Caracter;
	Definir posicion Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
		
	Para posicion<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,posicion,posicion)=Mayusculas(Subcadena(cad,posicion,posicion)) Entonces
			newcad<-concatenar(newcad,Minusculas(Subcadena(cad,posicion,posicion)));
		FinSi
		Si Subcadena(cad,posicion,posicion)=Minusculas(Subcadena(cad,posicion,posicion)) Entonces
			newcad<-concatenar(newcad,Mayusculas(Subcadena(cad,posicion,posicion)));
		FinSi
	FinPara
	Escribir "La cadena convertida es: ",newcad;
FinProceso
