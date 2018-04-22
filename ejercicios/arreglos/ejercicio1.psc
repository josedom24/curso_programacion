//################################################################################
//Realizar un programa que defina un vector llamado "vector_numeros" de 10 enteros,
// a continuación lo inocialice con valores aleatorios (del 1 al 10) 
//y posteriormente muestre en pantalla cada elemento del vector junto con 
//su cuadrado y su cubo.
//################################################################################
//Análisis
//Recorro un vector de 10 enteros y lo inicializo con valoreas aleatorios. 
//A continuación lo recorro para mostrar los valores, el cuadrado y el cubo.
// Datos de entrada:
// Información de salida:
// Variables:
//################################################################################

Proceso CuadradoCuboVector
	Definir vector_numeros Como Entero;
	Dimension vector_numeros[10];
	Definir indice Como Entero;
	//Primer recorrido para leer el vector
	Para indice<-0 hasta 9 hacer
		vector_numeros[indice]<-aleatorio(1,10);
	FinPara
	//Segundo recorrido para mostrar el resultado
	Para indice<-0 hasta 9 hacer
		Escribir vector_numeros[indice]," ",vector_numeros[indice]^2," ",vector_numeros[indice]^3;
	FinPara
FinProceso
