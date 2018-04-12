Proceso VectorInverso
	Definir vector1,vector2 Como Cadenas;
	Dimension vector1[5],vector2[5];
	Definir ind1,ind2 Como Entero;
	Para ind1<-0 hasta 4 hacer
		Escribir Sin Saltar "Dame la cadena ",ind1+1,":";
		Leer vector1[ind1];
	FinPara
	
	ind2<-0;
	Para ind1<-4 hasta 0 con paso -1 hacer
		vector2[ind2]<-vector1[ind1];
		ind2<-ind2+1;
	FinPara
	
	Para ind2<-0 hasta 4 hacer
		Escribir "La cadena ",ind2+1,": ",vector2[ind2];
	FinPara
FinProceso
