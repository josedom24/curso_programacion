Proceso GenerarIniciales
	Definir cad,invertida Como Caracter;
	Definir car como Entero;
	invertida<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;

	Para car<-Longitud(cad) hasta 0 Con Paso -1 Hacer
		invertida<-concatenar(invertida,Subcadena(cad,car,car));
	FinPara
	Escribir "La cadena invertida es:",invertida;
FinProceso
