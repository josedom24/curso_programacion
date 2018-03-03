//Escribir un programa que convierta un valor dado en grados Fahrenheit a grados Celsius.
//Análisis
//Tenemos que leer una temperatura en grados Fahrenheit y devolverla en grados celcius.
//Datos de entrada: grados Fahrenheit (real)
//Información de salida: grado Celcius (real)
//Variables: fahrenheit, celcius (Real).
//Diseño
//1. Leer la temperatura en grados Fahrenheit
//2. Calcular los grados celcius (C = (F-32)*5/9)
//3. Mostrar grados celcius

Proceso CalcularGradosCelcius
	Definir fahrenheit,celcius Como Real;
	Escribir Sin Saltar "Introduce la temeratura ºF::";
	Leer fahrenheit;
	celcius <- (fahrenheit - 32) * 5 / 9;
	Escribir "La temperatura es ",celcius, "ºC.";
FinProceso
