//################################################################################
//Escribir un programa que convierta un valor dado en grados Fahrenheit a grados 
//Celsius.
//################################################################################
//Análisis
//Tenemos que leer una temperatura en grados Fahrenheit y devolverla en grados 
//celsius.
//Datos de entrada: grados Fahrenheit (real)
//Información de salida: grado Celsius (real)
//Variables: fahrenheit, celsius (Real).
//################################################################################
//Diseño
//1. Leer la temperatura en grados Fahrenheit
//2. Calcular los grados celsius (C = (F-32)*5/9)
//3. Mostrar grados celsius
//################################################################################

Proceso CalcularGradosCelsius
	Definir fahrenheit,celsius Como Real;
	Escribir Sin Saltar "Introduce la temperatura ºF::";
	Leer fahrenheit;
	celsius <- (fahrenheit - 32) * 5 / 9;
	Escribir "La temperatura es ",celsius, " ºC.";
FinProceso
