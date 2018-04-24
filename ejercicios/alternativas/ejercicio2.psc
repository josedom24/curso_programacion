//################################################################################
//Algoritmo que pida un número y diga si es positivo, negativo o 0.
//################################################################################
//Análisis
//Tenemos que pedir un número por teclado, compararlo con 0, e indicar si es igual, 
//mayor o menor que 0.
//Datos de entrada: número (entero)
//Información de salida: Un mensaje de texto indicando si el número es igual, 
//mayor o menor que 0.
//Variables: num (enteros)
//################################################################################
//Diseño
//1. Leer el numero
//2. Si el número es igual 0 escribir "Es igual a 0"
//3. En caso contrario si es mayor que 0 escribir "Es mayor que 0"
//4. En otro caso escribir "Es menor que 0"
//################################################################################

Proceso CalcularPositivoNegativoCero
	Definir num como Entero;
	Escribir "Dime el número :";
	Leer num;
	Si num=0 Entonces
		Escribir "Es igual a 0";
	SiNo
		Si num>0 Entonces
			Escribir "Es positivo";
		SiNo
			Escribir "Es negativo";
		FinSi
	FinSi
FinProceso
