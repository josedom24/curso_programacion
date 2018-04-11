//Escribir por pantalla cada carácter de una cadena introducida por teclado.

Proceso EscribirCaracteres
	Definir cad Como Caracter;
	Definir i Como Entero;
	Escribir "Introduce una cadena:";
	Leer cad;
	Para i<-0 hasta Longitud(cad) Hacer
		Escribir Subcadena(cad,i,i);
	FinPara
FinProceso
