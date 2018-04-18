Funcion vuelta <- CalcularVuelta(dinero Por Referencia,cantidad)
	Definir vuelta como Entero;
	vuelta<-Trunc(dinero/cantidad);
	dinero<-dinero - vuelta*cantidad;
FinFuncion
Proceso Devolucion
	Definir dinero,total,entregada Como Real;
	Definir cantidad como Real;
	Definir vuelta,i como Entero;
	Dimension cantidad[15];
	cantidad[0]<-500;
	cantidad[1]<-200;
	cantidad[2]<-100;
	cantidad[3]<-50;
	cantidad[4]<-20;
	cantidad[5]<-10;
	cantidad[6]<-5;
	cantidad[7]<-2;
	cantidad[8]<-1;
	cantidad[9]<-0.50;
	cantidad[10]<-0.20;
	cantidad[11]<-0.10;
	cantidad[12]<-0.05;
	cantidad[13]<-0.02;
	cantidad[14]<-0.01;
	
	Escribir sin saltar "Dinero a pagar:";
	Leer total;
	Escribir sin saltar "Dinero pagado:";
	Leer entregada;
	dinero<-entregada-total;
	Para i<-0 hasta 14 Hacer
		vuelta<- CalcularVuelta(dinero,cantidad[i]);
		Si vuelta>0 Entonces
			Si i<7 Entonces
				Escribir vuelta, " billetes de ",cantidad[i]," euros.";
			SiNo
				Si i<9 Entonces
					Escribir vuelta, " monedas de ",cantidad[i]," euros.";
				SiNo
					Escribir vuelta, " monedas de ",cantidad[i]*100," centimos.";
				FinSi
			FinSi
		FinSi
	FinPara
	
FinProceso
