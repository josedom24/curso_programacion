Proceso DiasDelMes
	Definir edad Como Entero;
	Dimension edad[30];
	Definir nombre Como Caracter;
	Dimension nombre[30];
	Definir edad_max como Entero;
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
	//Calcular la edad máxima
	edad_max<-edad[0];
	Mientras nombre[indice]<>"*" Hacer
		Si edad[indice]>edad_max Entonces
			edad_max<-edad[indice];
		FinSi
		indice<-indice+1;
	FinMientras
	// Alumnos mayores de edad
	indice<-0;
	Escribir "Alumnos mayores de edad";
	Escribir "=======================";
	Mientras nombre[indice]<>"*" Hacer
		Si edad[indice]>=18 Entonces
			Escribir nombre[indice];
		FinSi
		indice<-indice+1;
	FinMientras
	// Alumnos mayores 
	indice<-0;
	Escribir "Alumnos mayores";
	Escribir "===============";
	Mientras nombre[indice]<>"*" Hacer
		Si edad[indice]=edad_max Entonces
			Escribir nombre[indice];
		FinSi
		indice<-indice+1;
	FinMientras
	
FinProceso
