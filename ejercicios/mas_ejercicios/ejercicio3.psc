Funcion vuelta <- CalcularVuelta(dinero Por Referencia,cantidad)
	Definir vuelta como Entero;
	vuelta<-Trunc(dinero/cantidad);
	dinero<-dinero - vuelta*cantidad;
FinFuncion

Funcion InicializaBilletesMonedas(cantidades Por Referencia)
	cantidades[0]<-500;
	cantidades[1]<-200;
	cantidades[2]<-100;
	cantidades[3]<-50;
	cantidades[4]<-20;
	cantidades[5]<-10;
	cantidades[6]<-5;
	cantidades[7]<-2;
	cantidades[8]<-1;
	cantidades[9]<-0.50;
	cantidades[10]<-0.20;
	cantidades[11]<-0.10;
	cantidades[12]<-0.05;
	cantidades[13]<-0.02;
	cantidades[14]<-0.01;
FinFuncion

Funcion EscribirVuelta(vuelta,cantidad)
	Si vuelta>0 Entonces
		Si cantidad>2 Entonces
			Escribir vuelta, " billetes de ",cantidad," euros.";
		SiNo
			Si cantidad>=1 Entonces
				Escribir vuelta, " monedas de ",cantidad," euros.";
			SiNo
				Escribir vuelta, " monedas de ",cantidad*100," centimos.";
			FinSi
		FinSi
	FinSi
FinFuncion

Proceso Devolucion
	Definir dinero,total,entregada Como Real;
	Definir cantidades como Real;
	Definir vuelta,indice como Entero;
	Dimension cantidades[15];
	
	Escribir sin saltar "Dinero a pagar:";
	Leer total;
	Escribir sin saltar "Dinero pagado:";
	Leer entregada;
	InicializaBilletesMonedas(cantidades);
	dinero<-entregada-total;
	Para indice<-0 hasta 14 Hacer
		vuelta<- CalcularVuelta(dinero,cantidades[indice]);
		EscribirVuelta(vuelta,cantidades[indice]);
	FinPara
FinProceso
