Proceso CalcularAhorro
	Definir cant_mensual Como Real;
	Definir ahorro_acum como Real;
	Definir mes Como Entero;
	ahorro_acum<-0;
	Para mes<-1 hasta 12 Hacer
		Escribir "¿Cuánto has ahorrado en el mes ",mes,"?:";
		Leer cant_mensual;
		ahorro_acum <- ahorro_acum + cant_mensual;
		Escribir "En el mes ",mes," llevas ahorrado ",ahorro_acum;
	FinPara
FinProces
