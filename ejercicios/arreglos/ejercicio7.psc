Proceso DiasDelMes
	Definir edad Como Entero;
	Dimension edad[30];
	Definir nombre Como Caracter;
	Dimension nombre[30];
	Definir mes como Entero;
	Definir indice como Entero;
	indice<-0;
	Repetir
		Escribir Sin Saltar "Dime el nombre de un alumno:";
		Leer nombre[indice];
		Si nombre[indice]<>"*" Entonces
			Escribir sin saltar "Dime su edad:";
			Leer edad[indice];
		FinSi
		indice<-indice+1;
	Hasta Que nombre[indice-1]="*" o indice=30;
	indice<-0;
	Escribir "Alumnos mayores de edad";
	Escribir "=======================";
	Mientras nombre[indice]<>"*" Hacer
		Si edad[indice]>=18 Entonces
			Escribir nombre[indice];
		FinSi
		indice<-indice+1;
	FinMientras
FinProceso
