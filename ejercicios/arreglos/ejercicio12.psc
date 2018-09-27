//################################################################################
//Diseñar el algoritmo correspondiente a un programa, que:
// * Crea una tabla bidimensional de longitud 5x15 y nombre 'marco'.
// * Carga la tabla con dos únicos valores 0 y 1, donde el valor uno ocupará las 
//posiciones o elementos que delimitan la tabla, es decir, las más externas, 
//mientras que el resto de los elementos contendrán el valor 0.
// * Visualiza el contenido de la matriz en pantalla.
//################################################################################
//Análisis
//Recorro la tabla: si el indice de fila = 0 (extremo izquierdo)
// o índice de fila = número de filas -1 (extremo derecho)
// o índice de columnas = 0 (extremo superior)
// o índice de columnas = de columnas columnas -1 (extremo inferior)
// inicializo a 1, sino inicializo a 0.
//Recorro la tabla por filas y columnas para mostrar los valores.
// Datos de entrada: Nada
// Información de salida: Los valores de la tabla
// Variables: matriz (tabla de 5 x 5 enteros),fila,col,num_filas,num_cols (enteros)
//################################################################################

Proceso LadoExterno
	Definir matriz Como Entero;
	Dimension matriz[5,15];
	Definir num_filas,num_cols como Entero;
	Definir fila,col como Entero;
	num_filas<-5;
	num_cols<-15;
	Para fila<-0 hasta num_filas-1 Hacer
		Para col<-0 hasta num_cols-1 Hacer
			//Si estoy en el extremo izquierdo, derecho, superior o inferior
			Si fila=0 o fila=num_filas-1 o col=0 o col= num_cols-1 Entonces
				//Inicializo a 1
				matriz[fila,col]<-1;
			SiNo
				//SiNo inicializo a 0
				matriz[fila,col]<-0;
			FinSi
			
		FinPara
	FinPara
	//Recorro para mostrar la tabla.
	Para fila<-0 hasta num_filas-1 Hacer
		Para col<-0 hasta num_cols-1 Hacer
			Escribir Sin Saltar matriz[fila,col];
		FinPara
		Escribir "";
	FinPara
FinProceso	
