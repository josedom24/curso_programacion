Proceso Contiene
	Definir cad, subcad,subcad_de_cadena Como Caracter;
	Definir num_subcadenas,nsubc Como Entero;
	Definir indicador Como Logico;
	indicador<-Falso;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Escribir Sin Saltar "Introduce una subcadena:";
	Leer subcad;
	num_subcadenas<- Longitud(cad)-Longitud(subcad)+1;
	Para nsubc<-0 hasta num_subcadenas-1 Hacer
		subcad_de_cadena<-Subcadena(cad,nsubc,nsubc+Longitud(subcad)-1);
		Si subcad_de_cadena=subcad Entonces
			indicador<-Verdadero;
		FinSi
	FinPara
	Si indicador Entonces
		Escribir "La cadena contiene la subcadena.";
	SiNo
		Escribir "La cadena no contiene la subcadena.";
	FinSi
FinProceso
