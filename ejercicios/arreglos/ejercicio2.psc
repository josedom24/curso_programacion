//################################################################################
//Crear un vector de 5 elementos de cadenas de caracteres, inicializa el vector 
//con datos leídos por el teclado. Copia los elementos del vector en otro vector 
//pero en orden inverso, y muéstralo por la pantalla.
//################################################################################
//Análisis
//Recorro el vector1 y leo sus elementos por teclado. recorro de forma inversa 
//el vector1 y voy guardano los elementos en el vector2 (se invierten).
//Recorro el vector2 para mostrar los elementos.
// Datos de entrada: 5 cadenas de caracteres
// Información de salida: Las cinco cadena pero mostrar den orden inverso.
// Variables: vector1,vector2 (vector de 5 cadenas)
//			  tam_vector1,tam_vector2(entero)
//			  indicardor1, indicador2 (entero)
//################################################################################
//Diseño


//################################################################################

Proceso VectorInverso
	Definir vector1,vector2 Como Cadenas;
	Dimension vector1[5],vector2[5];
	Definir indicador1,indicador2 Como Entero;
	Definir tam_vector1,tam_vector2 Como Entero;
	//Defino el tamaño de los vectores para usarlos en los recorridos
	tam_vector1<-5;
	tam_vector2<-5;
	//Recorro el vector1 y leo cada elemento por teclado.
	Para indicador1<-0 hasta tam_vector1-1 hacer
		Escribir Sin Saltar "Dame la cadena ",indicador1+1,":";
		Leer vector1[indicador1];
	FinPara
	
	indicador2<-0;
	//Recorro el vector1 desde el final al principio
	//Cada elemento lo guardo en el vector2
	Para indicador1<-tam_vector1-1 hasta 0 con paso -1 hacer
		vector2[indicador2]<-vector1[indicador1];
		indicador2<-indicador2+1;
	FinPara
	//Recorro el vector2 para mostrarlo
	Para indicador2<-0 hasta tam_vector2-1 hacer
		Escribir "La cadena ",indicador2+1,": ",vector2[indicador2];
	FinPara
FinProceso
