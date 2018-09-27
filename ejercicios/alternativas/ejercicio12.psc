//################################################################################
//Escribir un programa que lea un año indicar si es bisiesto. 
//Nota: un año es bisiesto si es un número divisible por 4, pero no si es 
//divisible por 100, excepto que también sea divisible por 400.
//################################################################################
// Análisis
// Pedir un año y comprobar si es bisiesto.
// Datos de entrada: el año (entero)
// Información de salida: Si el año es bisiesto o no
// Variables: year (entero)
//################################################################################
// Diseño
// 1.Leer year
// 2.Si el año es divisible por 4, pero no si es divisible por 100, excepto que 
//también sea divisible por 400 mostrar "Año bisiesto"
// 3. En caso contrario, mostrar "Año no bisiesto"
//################################################################################

Proceso CalcularYearBisiesto
	Definir year Como Entero;
	Escribir Sin Saltar "Introduce el año:";
	Leer year;
	Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
		Escribir "Año bisiesto.";
	SiNo
		Escribir "Año no bisiesto.";
	FinSi
FinProceso
