Proceso SustituirCaracter
	Definir cad,newcad, car1,car2 Como Caracter;
	Definir c Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Repetir
		Escribir Sin Saltar "Introduce un caracter a buscar:";
		Leer car1;
	Hasta Que Longitud(car1)=1;
	Repetir
		Escribir Sin Saltar "Introduce un caracter para sustituir:";
		Leer car2;
	Hasta Que Longitud(car2)=1;
	
	
	Para c<-0 hasta Longitud(cad) Hacer
		Si Subcadena(cad,c,c)=car1 Entonces
			newcad<-concatenar(newcad,car2);
		SiNo
			newcad<-concatenar(newcad,Subcadena(cad,c,c));
		FinSi
	FinPara
	Escribir "La cadena invertida es ",newcad;
FinProceso
