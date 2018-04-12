Proceso CuadradoCuboVector
	Definir vector Como Entero;
	Dimension vector[10];
	Definir cambios,aux Como Entero;
	Definir i Como Entero;
	Para i<-0 hasta 9 hacer
		vector[i]<-aleatorio(1,10);
	FinPara
	Repetir 
		cambios<-0;
		Para i<-0 hasta 8 Hacer
			Si vector[i]>vector[i+1] Entonces
				aux<-vector[i];
				vector[i]<-vector[i+1];
				vector[i+1]<-aux;
				cambios<-cambios+1;
			FinSi
		FinPara
	
	Hasta Que cambios=0;
	Para i<-0 hasta 9 Hacer
		Escribir Sin Saltar vector[i]," ";
	FinPara
FinProceso
