//################################################################################
//Realizar un programa que lea una cadena por teclado y convierta las mayúsculas a 
//minúsculas y viceversa.
//################################################################################
//Análisis
//Leo un cadena, la recorro y voy copiando cada carácter a otra cadena, teniendo en 
// cuenta que si es mayúsculas la convierto a minúsculas y viceversa.
// Datos de entrada: Cadena de caracteres
// Información de salida: Cadena con el cambio de mayúsculas a minusculas y viceversa.
// Variables:cad, newcad  (carácter)
//################################################################################
Proceso ConvertirMayMin
	Definir cad,newcad Como Caracter;
	Definir c Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
		
	Para c<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,c,c)=Mayusculas(Subcadena(cad,c,c)) Entonces
			newcad<-concatenar(newcad,Minusculas(Subcadena(cad,c,c)));
		FinSi
		Si Subcadena(cad,c,c)=Minusculas(Subcadena(cad,c,c)) Entonces
			newcad<-concatenar(newcad,Mayusculas(Subcadena(cad,c,c)));
		FinSi
	FinPara
	Escribir "La cadena convertida es: ",newcad;
FinProceso
