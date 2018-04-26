//################################################################################
//Hacer un programa que inicialice un vector de números con valores aleatorios, 
//y posterior ordene los elementos de menor a mayor.
//################################################################################
//Análisis
//Inicializo el vector con valores aleatorios. Voy recorriendo el vector e
//intercambio los valores de dos elementos consecutivos si no están ordenados.
//Cada vez que hago un intercambio lo cuento, este proceso lo repito hasta que
//no haya realizado ningún cambio, el vector está ordenado.
// Datos de entrada: Nada
// Información de salida: Números del vector ordenado.
// Variables: vector (vector de 10 enteros), tam_vector,indice,aux,cambios (Entero)
//################################################################################

Proceso OrdenarVector
	Definir vector Como Entero;
	Dimension vector[10];
	Definir cambios,aux Como Entero;
	Definir indice Como Entero;
	Definir tam_vector Como Entero;
	tam_vector<-10;
	//Inicializo el vector con valores aleatorios.
	Para indice<-0 hasta tam_vector-1 hacer
		vector[indice]<-aleatorio(1,10);
	FinPara
	//Voy a repetir la ordenación hasta que no haya cambiado ningún número
	Repetir 
		cambios<-0;
		//Recorre hasta el antepenúltimo
		//Intercambio los valores de dos elementos consecutivos si no están ordenados
		Para indice<-0 hasta tam_vector-2 Hacer
			Si vector[indice]>vector[indice+1] Entonces
				aux<-vector[indice];
				vector[indice]<-vector[indice+1];
				vector[indice+1]<-aux;
				cambios<-cambios+1;
			FinSi
		FinPara
	Hasta Que cambios=0;
	//Recorro el vector ordenado
	Para indice<-0 hasta tam_vector-1 Hacer
		Escribir Sin Saltar vector[indice]," ";
	FinPara
FinProceso
