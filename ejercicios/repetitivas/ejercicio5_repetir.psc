//################################################################################
//Algoritmo que pida caracteres e imprima 'VOCAL' si son vocales y 'NO VOCAL' 
//en caso contrario, el programa termina cuando se introduce un espacio.
//################################################################################
//Análisis
//Leer un carácter hasta que sea el espacio.
//Si el carácter no es espacio -> si es una vocal -> Muestro "Es vocal"
//Si no muestro "No es vocal"
// Datos de entrada:vamos leyendo un carácter.
// Información de salida:Mensajes: "Es vocal", "No es vocal"
// Variables:car (caracter)
//################################################################################
//Diseño
//1.- Repetir
//		2.- Repetir -> Leer carácter hasta que sea un sólo carácter
//		3.- Si car no es el espacio
//			4.- Si es A,E,I,O,U o a,e,i,o,u -> Mostrar "Es vocal"
//			5.-Si no mostrar "No es vocal"
//hasta que el carácter sea espacio
//################################################################################

Proceso VocalConsonante
	Definir car Como Caracter;
	Repetir
		Repetir
			Escribir "Introduce un carácter:";
			Leer car;
		Hasta que Longitud(car)=1;
		Si car<>" " Entonces
			Si Mayusculas(car)="A" o Mayusculas(car)="E" o Mayusculas(car)="I" o Mayusculas(car)="O" o Mayusculas(car)="U" Entonces
				Escribir "VOCAL";
			SiNO
				Escribir "NO VOCAL";
			FinSi
		FinSi
	Hasta Que car=" ";
FinProceso
