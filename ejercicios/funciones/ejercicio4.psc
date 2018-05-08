//################################################################################
//Función ConvetirEspaciado: Recibe una cadena de caracteres, y devuelve otra 
//con los mismos caracteres separados con espacio.
//Parámetros de entrada: Cadena de caracteres
//Dato devuelto: Cadena igual a la anterior pero con espacios entre los 
//caracteres
//################################################################################

Funcion cad_con_espacios <- ConvertirEspaciado(cad)
	Definir cad_con_espacios como Caracter;
	Definir i como Entero;
	cad_con_espacios<-"";
	Para i<-0 Hasta Longitud(cad) Hacer
		//Concateno el carácter
		cad_con_espacios<-Concatenar(cad_con_espacios,Subcadena(cad,i,i));
		//Concateno un espacio
		cad_con_espacios<-Concatenar(cad_con_espacios," ");
	FinPara
FinFuncion

//################################################################################
//Crea un función "ConvertirEspaciado", que reciba como parámetro un texto y 
//devuelve una cadena con un espacio adicional tras cada letra. Por ejemplo, 
//"Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se 
//use dicha función.
//################################################################################

Proceso CadenaConEspacios
	Definir mensaje Como Caracter;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer mensaje;
	Escribir "La cadena con espacio:";
	Escribir ConvertirEspaciado(mensaje);
	
FinProceso
