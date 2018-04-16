Funcion cad_con_espacios <- ConvertirEspaciado(cad)
	Definir cad_con_espacios como Caracter;
	Definir i como Entero;
	cad_con_espacios<-"";
	Para i<-0 Hasta Longitud(cad) Hacer
		cad_con_espacios<-Concatenar(cad_con_espacios,Subcadena(cad,i,i));
		cad_con_espacios<-Concatenar(cad_con_espacios," ");
	FinPara
FinFuncion
Proceso CadenaConEspacios
	Definir mensaje Como Caracter;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer mensaje;
	Escribir "La cadena con espacio:";
	Escribir ConvertirEspaciado(mensaje);
	
FinProceso
