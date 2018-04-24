//################################################################################
//Introducir una cadena de caracteres e indicar si es un palíndromo. Una palabra 
//palíndroma es aquella que se lee igual adelante que atrás.
//################################################################################
//Análisis
//Leo una cadena. Creo una nueva cadena invirtiendo la cadena leída. Si so iguales 
//la cadena original y la inversa-> Es un palíndromo. No hemos tenido en cuanta 
//las mayúsculas y minúsculas.
// Datos de entrada: Cadena de caracteres 
// Información de salida: Mensaje indicando si es palíndromo o no.
// Variables:cad1, cad2  (carácter), posicion (entero), 
//################################################################################

Proceso Palindromo
	Definir cad1,cad2 Como Caracter;
	Definir posicion Como Entero;
	cad2 <- "";
	Escribir "Introduce una cadena:";
	Leer cad1;
	Para posicion<-Longitud(cad1)-1 Hasta 0 Con Paso -1 Hacer
		cad2 <- Concatenar(cad2,Subcadena(cad1,posicion,posicion));
	FinPara
	Si cad1=cad2 Entonces
		Escribir "Es un palíndromo";
	SiNo
		Escribir "No es un palíndromo";
	FinSi
FinProceso
