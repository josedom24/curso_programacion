Funcion tmedia <- calcularTemperaturaMedia(temp1,temp2)
	Definir tmedia Como Real;
	tmedia<-(temp1+temp2)/2;
FinFuncion

Proceso TemperturaMedia
	Definir tmin,tmax Como Real;
	Definir cantidad,i como Entero;
	Escribir Sin Saltar "¿Cúantas temperaturas vas a calcular?:";
	Leer cantidad;
	Para i<-1 hasta cantidad Hacer
		Escribir sin saltar "Introduce temperatura mínima:";
		Leer tmin;
		Escribir sin saltar "Introduce temperatura máxima:";
		Leer tmax;
		Escribir "Temperatura media: ",calcularTemperaturaMedia(tmin,tmax);
	FinPara
	
	
FinProceso
