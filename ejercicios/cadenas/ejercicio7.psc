//################################################################################
//Pide una cadena y dos caracteres por teclado (valida que sea un carácter), 
//sustituye la aparición del primer carácter en la cadena por el segundo carácter.
//################################################################################
//Análisis
//Leo un cadena y dos caracteres, recorro la cadena, si encuentro un carácter 
//igual al primer carácter que he leído lo sustituyo por el segundo. Para ello voy 
//a ir copiando los caracteres de la cadena a otra cadena, cuando tenga que 
//sustituir un carácter por otro copiaré el segundo.
// Datos de entrada: Cadena de caracteres, el carácter a buscar y a reemplazar.
// Información de salida: Cadena con el carácter indicado cambiado por el segundo.
// Variables:cad, newcad, car_buscar, car_sustituir (carácter), posicion (entero)
//################################################################################

Proceso SustituirCaracter
	Definir cad,newcad, car_buscar,car_sustituir Como Caracter;
	Definir posicion Como Entero;
	newcad<-"";
	Escribir Sin Saltar "Introduce una cadena:";
	Leer cad;
	Repetir
		Escribir Sin Saltar "Introduce un caracter a buscar:";
		Leer car_buscar;
	Hasta Que Longitud(car_buscar)=1;
	Repetir
		Escribir Sin Saltar "Introduce un caracter para sustituir:";
		Leer car_sustituir;
	Hasta Que Longitud(car_sustituir)=1;
	
	
	Para posicion<-0 hasta Longitud(cad)-1 Hacer
		Si Subcadena(cad,posicion,posicion)=car_buscar Entonces
			newcad<-concatenar(newcad,car_sustituir);
		SiNo
			newcad<-concatenar(newcad,Subcadena(cad,posicion,posicion));
		FinSi
	FinPara
	Escribir "La cadena modificada es ",newcad;
FinProceso
