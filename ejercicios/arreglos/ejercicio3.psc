Proceso VectorNotas
	Definir notas Como Entero;
	Definir nota_media Como Real;
	Definir suma,nota_max,nota_min como Entero;
	Dimension notas[10];
	Definir i Como Entero;
	Para i<-0 hasta 9 hacer
		Repetir
			Escribir sin saltar "Introduce la nota ",i+1,": ";
			Leer notas[i];
		Hasta Que notas[i]>=0 Y notas[i]<=10;
	FinPara
	//Supongo que la nota máxima y la mínima es ta primera
	nota_max<-notas[0];
	nota_min<-notas[0];
	
	suma<-0;
	Para i<-0 hasta 9 hacer
		suma<-suma+notas[i];
		Si notas[i]>nota_max Entonces
				nota_max<-notas[i];
		FinSi
		Si notas[i]<nota_min Entonces
			nota_min<-notas[i];
		FinSi
		Escribir sin saltar notas[i]," ";
	FinPara
	nota_media<-suma/10;
	Escribir "";
	Escribir "Nota media: ",nota_media;
	Escribir "Nota máxima: ",nota_max;
	Escribir "Nota mínima: ",nota_min;
FinProceso
