Proceso Tabla
	Definir matriz Como Entero;
	Dimension matriz[5,5];
	Definir fila,col como Entero;
	Definir suma como Entero;
	Para fila<-0 hasta 4 Hacer
		Para col<-0 hasta 4 Hacer
			Escribir Sin Saltar "Introduce el número de la fila ",fila+1," y columna ",col+1,":";
			Leer matriz[fila,col];
		FinPara
	FinPara
	//Suma las filas
	Para fila<-0 hasta 4 Hacer
		suma<-0;
		Para col<-0 hasta 4 Hacer
			suma<-suma+ matriz[fila,col];
		FinPara
		Escribir "La suma de los elemento de la fila ",fila+1," es ",suma;
	FinPara
	//Suma las columnas
	Para col<-0 hasta 4 Hacer
		suma<-0;
		Para fila<-0 hasta 4 Hacer
			suma<-suma+ matriz[fila,col];
		FinPara
		Escribir "La suma de los elemento de la columna ",col+1," es ",suma;
	FinPara
FinProceso	
