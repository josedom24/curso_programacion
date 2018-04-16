Proceso LadoExterno
	Definir matriz Como Entero;
	Dimension matriz[5,15];
	Definir TAMFILAS,TAMCOL como Entero;
	Definir fila,col como Entero;
	Definir suma como Entero;
	TAMFILAS<-5;
	TAMCOL<-15;
	Para fila<-0 hasta TAMFILAS-1 Hacer
		Para col<-0 hasta TAMCOL-1 Hacer
			Si fila=0 o fila=TAMFILAS-1 o col=0 o col= TAMCOL-1 Entonces
				matriz[fila,col]<-1;
			SiNo
				matriz[fila,col]<-0;
			FinSi
			
		FinPara
	FinPara
	
	Para fila<-0 hasta TAMFILAS-1 Hacer
		Para col<-0 hasta TAMCOL-1 Hacer
			Escribir Sin Saltar matriz[fila,col];
		FinPara
		Escribir "";
	FinPara
	
FinProceso	
