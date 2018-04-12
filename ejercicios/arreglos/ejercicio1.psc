Proceso CuadradoCuboVector
	Definir vector_numeros Como Entero;
	Dimension vector_numeros[10];
	Definir i Como Entero;
	Para i<-0 hasta 9 hacer
		vector_numeros[i]<-aleatorio(1,10);
	FinPara
	Para i<-0 hasta 9 hacer
		Escribir vector_numeros[i]," ",vector_numeros[i]^2," ",vector_numeros[i]^3;
	FinPara
FinProceso
