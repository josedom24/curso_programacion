//################################################################################
//Procedimiento centrar: Recibe una cadena y la imprime centrada en la pantalla.
//Suponemos que tenemos una pantalla de 80 caracteres de ancho. 
//Para centrar usamos la formula 40 - (Longitud(cad)/2)
//Parámetros de entrada: cadena a imprimir centrada
//################################################################################

Funcion centrar(cad)	
	Definir i como Entero;
	Para i<-0 hasta (40 - (Longitud(cad)/2)) Hacer
		Escribir sin saltar " ";
	FinPara
	Escribir cad;
	//Imprimo un subrayado con "="
	Para i<-0 hasta (40 - (Longitud(cad)/2)) Hacer
		Escribir sin saltar " ";
	FinPara
	Para i<-0 hasta Longitud(cad) Hacer
		Escribir sin saltar "=";
	FinPara
	Escribir "";
FinFuncion

//################################################################################
//Crea un procedimiento EscribirCentrado, que reciba como parámetro un texto y lo 
//escriba centrado en pantalla (suponiendo una anchura de 80 columnas; pista: 
//deberás escribir 40 - longitud/2 espacios antes del texto). 
//Además subraya el mensaje utilizando el carácter =.
//################################################################################

Proceso EscribirCentrado
	Definir mensaje1,mensaje2 Como Caracter;
	mensaje1 <- "Un mensaje centrado";
	centrar(mensaje1);
	mensaje2<-"Otro mensaje";
	centrar(mensaje2);
FinProceso
	
