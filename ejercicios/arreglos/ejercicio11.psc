Proceso Diagonal
	Definir matriz Como Entero;
	Dimension matriz[5,5];
	Definir fila,col como Entero;
	Definir suma como Entero;
	Para fila<-0 hasta 4 Hacer
		Para col<-0 hasta 4 Hacer
			Si fila=col o fila=4-col Entonces
				matriz[fila,col]<-1;
			SiNo
				matriz[fila,col]<-0;
			FinSi
			
		FinPara
	FinPara
	
	Para fila<-0 hasta 4 Hacer
		Para col<-0 hasta 4 Hacer
			Escribir Sin Saltar matriz[fila,col];
		FinPara
		Escribir "";
	FinPara
	
FinProceso	
