//################################################################################
//Programa que declare un vector de diez elementos enteros y pida números para 
//rellenarlo hasta que se llene el vector o se introduzca un número negativo. 
//Entonces se debe imprimir el vector (sólo los elementos introducidos).
//################################################################################
//Análisis
//Recorro el vector y voy inicializando sus elementos. Si introduzco un número 
//negativo salimos del bucle. También termino el bucle si introduzco todos los 
//elementos de vector. El número negativo me sirve de indicador de que hasta 
//esa posición el vector tiene elementos. 
//Recorro hasta el tamaño del vector o encuentre un número negativo para mostrar 
//los elementos del vector.
// Datos de entrada: Leo número positivos y los guardo en el vector, hasta que lea 
//un número negativo o lea todos los elementos del vector.
// Información de salida:Los elementos (números positivos) guardados en el vector.
// Variables: vector (vector de 10 enteros), tam_vector,indice,num (Entero)
//################################################################################

Proceso VectorPositivo
	Definir vector Como Entero;
	Dimension vector[10];
	Definir tam_vector,indice,num como Entero;
	indice<-0;
	tam_vector<-10;
	//Recorro el vector y voy inicializando sus elementos
	//No uso un para, porque si introduzco un número negativo salimos del bucle.
	//También termino el bucle si introduzco todos los elementos de vector.
	//El número negativo me sirve de indicador de que hasta esa posición el vector tiene elemento-
	Repetir
		Escribir Sin Saltar "Introduce un número en el vector. Número ",indice+1;
		Leer vector[indice];
		indice<-indice+1;
	Hasta Que indice=tam_vector O vector[indice-1]<0;
	indice<-0;
	//Recorro hasta el tamaño del vector o encuentre un número negativo.
	Escribir "Elementos del vector";
	Mientras indice<tam_vector-1 Y vector[indice]>=0 Hacer
		Escribir sin saltar vector[indice]," ";
		indice<-indice+1;
	FinMientras
FinProceso
