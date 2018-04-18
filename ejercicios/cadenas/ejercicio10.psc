Proceso Palindromo
	Definir cad1,cad2 Como Caracter;
	Definir i Como Entero;
	cad2 <- "";
	Escribir "Introduce una cadena:";
	Leer cad1;
	Para i<-Longitud(cad1)-1 Hasta 0 Con Paso -1 Hacer
		cad2 <- Concatenar(cad2,Subcadena(cad1,i,i));
	FinPara
	Si cad1=cad2 Entonces
		Escribir "Es un palíndromo";
	SiNo
		Escribir "No es un palíndromo";
	FinSi
FinProceso
