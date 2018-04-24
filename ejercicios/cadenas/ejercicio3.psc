//################################################################################
//Pide una cadena y un carácter por teclado (valida que sea un carácter) 
//y muestra cuantas veces aparece el carácter en la cadena.
//################################################################################
//Análisis
//Leo una cadena y un carácter (tengo que asegurarme que es un sólo carácter,
//es decir hasta que la longitud sea 1). Recorro la cadena y compara cada uno de
//sus caracteres con el carácter introducido, si es igual lo cuento.
// Datos de entrada: Cadena y carácter
// Información de salida: Número de veces que aparece el carácter en la cadena.
// Variables: cad, car (caracter), posicion, cont (entero)
//################################################################################

Proceso ContarCaracter
	Definir cad, car Como Caracter;
	Definir posicion,cont Como Entero;
	cont<-0;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Repetir
		Escribir Sin Saltar "Introduce un carácter:";
		Leer car;
	Hasta Que Longitud(car)=1;
	
	Para posicion<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,posicion,posicion)=car Entonces
			cont<-cont+1;
		FinSi
	FinPara
	Escribir "En la cadena ",cad," aparecen ",cont," veces el carácter ",car,".";
FinProceso
