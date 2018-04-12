Proceso GenerarIniciales
	Definir cad Como Caracter;
	Definir car Como Entero;
	Definir iniciales Como Caracter;
	iniciales <- "";
	car<-0;
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	//Recorro los posibles espacios al principio de la cadena
	Mientras Subcadena(cad,car,car)=" " Hacer
		car<-car+1;
	FinMientras
	
	iniciales<-concatenar(iniciales,subcadena(cad,car,car));
	Para car<-car hasta Longitud(cad) Hacer
		Si Subcadena(cad,car,car)=" " Entonces
			Mientras Subcadena(cad,car,car)=" " Y car<=Longitud(cad) Hacer
				car<-car+1;
			FinMientras
			iniciales<-concatenar(iniciales,subcadena(cad,car,car));
		FinSi
	FinPara
	//Si no acaba en espacios tengo que contar la última palbra
	
	Escribir "Iniciales:",Mayusculas(iniciales);
FinProceso
