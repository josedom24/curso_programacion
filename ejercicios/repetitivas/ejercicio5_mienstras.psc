//Algoritmo que pida caracteres e imprima 'VOCAL' si son vocales y 'NO VOCAL' en caso contrario, el programa termina cuando se introduce un espacio.
Proceso VocalConsonante
	Definir car Como Caracter;
	Escribir "Introduce un caracter:";
	Leer car;
	Mientras car<>" " Hacer
		Si Mayusculas(car)="A" o Mayusculas(car)="E" o Mayusculas(car)="I" o Mayusculas(car)="O" o Mayusculas(car)="U" Entonces
			Escribir "VOCAL";
		SiNO
			Escribir "NO VOCAL";
		FinSi
		Escribir "Introduce un caracter:";
		Leer car;
	FinMientras
	
FinProceso
