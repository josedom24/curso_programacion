//################################################################################
//Dado un número de dos cifras, diseÃ±e un algoritmo que permita obtener el 
//número invertido. 
//################################################################################
//Análisis
//Se pide un número de dos cifras y se debe mostrar el número de centenas 
//y de unidades
//Datos de entrada: el número (entero).
//Información de salida: primera cifra, segunda cifra (enteros)
//Variables: num, decenas, unidades (entero)
//################################################################################
//Diseño
//1. Leer el número de dos cifras (en estos momentos no podemos determinar que el 
//   número es de dos cifras)
//2. Calcular decenas: división entera del número entre 10.
//3. Calcular unidades: resto de dividir el número entre 10.
//4. Mostrar decenas y unidades
//################################################################################

Proceso CalcularDecenasUnidades
	Definir num,decenas,unidades como Entero;
	Escribir "Dime un número de dos cifras";
	Leer num;
	decenas <- trunc(num/10);
	unidades <- num % 10;
	Escribir "Primera cifra (decenas): ",decenas;
	Escribir "Segunda cifra (unidades): ",unidades;
FinProceso