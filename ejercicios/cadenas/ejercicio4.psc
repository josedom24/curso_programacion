Proceso ContarPalabras
	Definir cad Como Caracter;
	Definir car,cont Como Entero;
	cont<-0;
	car<-0;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	//Recorro los posibles espacios al principio de la cadena
	Mientras Subcadena(cad,car,car)=" " Hacer
		car<-car+1;
	FinMientras
	
	
	Para car<-car hasta Longitud(cad) Hacer
		Si Subcadena(cad,car,car)=" " Entonces
			cont<-cont+1;
			Mientras Subcadena(cad,car,car)=" " Y car<=Longitud(cad) Hacer
				car<-car+1;
			FinMientras
		FinSi
	FinPara
	//Si no acaba en espacios tengo que contar la última palbra
	Si subcadena(cad,Longitud(cad)-1,Longitud(cad)-1)<>" " Entonces
		cont<-cont+1;
	FinSi
	Escribir "La frase tiene ",cont," palabras.";
FinProceso
