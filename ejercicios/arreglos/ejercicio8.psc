//################################################################################
//Queremos guardar los nombres y la edades de los alumnos de un curso. 
//Realiza un programa que introduzca el nombre y la edad de cada alumno. 
//El proceso de lectura de datos terminará cuando se introduzca como nombre 
//un asterisco (*) Al finalizar se mostrará los siguientes datos:
// * Todos lo alumnos mayores de edad.
// * Los alumnos mayores (los que tienen más edad)
//################################################################################
//Análisis
//Inicializo los vectores hasta que introduzca un "*" o llegue a final del vector.
//El * me sirve para indicar el final del vector. 
//Hago un recorrido para mostrar los alumnos mayores de edad.
//Hago un recorrido (hasta encontrar un * o llega al final) para calcular la edad
//máxima. A continuación recorro los arrays, y muestro el nombre de los alumnos
//con mayor edad.
// Datos de entrada: Nombre y edad de los alumnos, hasta meter *.
// Información de salida: Los alumnos mayores de edad, y los alumnos de mayor edad
// Variables: edad (vector de 30 enteros), nombre (vector de 30 cadenas)
//            indice, tam_vector, edad_max (entero)
//################################################################################

Proceso InformacionAlumnos
	Definir edad Como Entero;
	Dimension edad[30];
	Definir nombre Como Caracter;
	Dimension nombre[30];
	Definir edad_max como Entero;
	Definir indice,tam_vector como Entero;
	indice<-0;
	tam_vector<-30;
	//Inicializo los vectores hasta que introduzca un "*" o llegue a final del vector
	//El * me sirve para indicar el final del vector
	Repetir
		Escribir Sin Saltar "Dime el nombre de un alumno:";
		Leer nombre[indice];
		Si nombre[indice]<>"*" Entonces
			Escribir sin saltar "Dime su edad:";
			Leer edad[indice];
		FinSi
		indice<-indice+1;
	Hasta Que nombre[indice-1]="*" o indice=tam_vector;
	indice<-0;
	//Calcular la edad máxima
	//El recorrido es hasta que no encuentre un * y no hayamos llegado al final del vector
	edad_max<-edad[0];
	Mientras indice<tam_vector Y nombre[indice]<>"*"  Hacer
		Si edad[indice]>edad_max Entonces
			edad_max<-edad[indice];
		FinSi
		indice<-indice+1;
	FinMientras
	// Alumnos mayores de edad
	indice<-0;
	Escribir "Alumnos mayores de edad";
	Escribir "=======================";
	Mientras indice<tam_vector Y nombre[indice]<>"*" Hacer
		Si edad[indice]>=18 Entonces
			Escribir nombre[indice];
		FinSi
		indice<-indice+1;
	FinMientras
	// Alumnos mayores 
	indice<-0;
	Escribir "Alumnos mayores";
	Escribir "===============";
	Mientras indice<tam_vector Y nombre[indice]<>"*" Hacer
		Si edad[indice]=edad_max Entonces
			Escribir nombre[indice];
		FinSi
		indice<-indice+1;
	FinMientras
FinProceso
