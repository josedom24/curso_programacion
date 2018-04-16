Funcion centrar(cad)	
	Definir i como Entero;
	Para i<-0 hasta (40 - (Longitud(cad)/2)) Hacer
		Escribir sin saltar " ";
	FinPara
	Escribir cad;
	Para i<-0 hasta (40 - (Longitud(cad)/2)) Hacer
		Escribir sin saltar " ";
	FinPara
	Para i<-0 hasta Longitud(cad) Hacer
		Escribir sin saltar "=";
	FinPara
	Escribir "";
FinFuncion

Proceso EscribirCentrado
	Definir mensaje1,mensaje2 Como Caracter;
	mensaje1 <- "Un mensaje centrado";
	centrar(mensaje1);
	mensaje2<-"Otro mensaje";
	centrar(mensaje2);
FinProceso
	
