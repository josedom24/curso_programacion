Funcion vuelta <- CalcularVuelta(dinero Por Referencia,cantidad)
	Definir vuelta como Entero;
	vuelta<-Trunc(dinero/cantidad);
	dinero<-dinero - vuelta*cantidad;
FinFuncion
Proceso Devolucion
	Definir dinero Como Entero;
	Definir cantidad como Entero;
	Definir vuelta,i como Entero;
	Dimension cantidad[9];
	cantidad[0]<-500;
	cantidad[1]<-200;
	cantidad[2]<-100;
	cantidad[3]<-50;
	cantidad[4]<-20;
	cantidad[5]<-10;
	cantidad[6]<-5;
	cantidad[7]<-2;
	cantidad[8]<-1;
	Escribir sin saltar "Dinero a devolver:";
	Leer dinero;
	Para i<-0 hasta 8 Hacer
		vuelta<- CalcularVuelta(dinero,cantidad[i]);
		Si vuelta>0 Entonces
			Escribir vuelta, " de ",cantidad[i]," euros";
		FinSi
	FinPara
	
FinProceso
