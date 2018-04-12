Proceso ConvertirMayMin
	Definir cad,newcad Como Caracter;
	Definir c Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
		
	Para c<-0 hasta Longitud(cad) Hacer
		Si Subcadena(cad,c,c)=Mayusculas(Subcadena(cad,c,c)) Entonces
			newcad<-concatenar(newcad,Minusculas(Subcadena(cad,c,c)));
		FinSi
		Si Subcadena(cad,c,c)=Minusculas(Subcadena(cad,c,c)) Entonces
			newcad<-concatenar(newcad,Mayusculas(Subcadena(cad,c,c)));
		FinSi
	FinPara
	Escribir "La cadena convertida es: ",newcad;
FinProceso
