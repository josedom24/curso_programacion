Proceso ContarCaracter
	Definir cad, car Como Caracter;
	Definir c,cont Como Entero;
	cont<-0;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Repetir
		Escribir Sin Saltar "Introduce un caracter:";
		Leer car;
	Hasta Que Longitud(car)=1;
	
	
	Para c<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,c,c)=car Entonces
			cont<-cont+1;
		FinSi
	FinPara
	Escribir "En la cadena ",cad," aparecen ",cont," veces el caracter ",car,".";
FinProceso
