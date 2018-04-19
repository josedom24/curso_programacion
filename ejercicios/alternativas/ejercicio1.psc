//################################################################################
//Algoritmo que pida dos números e indique si el primero es mayor que el segundo.
//################################################################################
//Análisis
//Tenemos que pedir dos números por teclado, compararlos 
//e indicar si el primero es mayor que el segundo o no.
//Datos de entrada: número 1, número 2 
//Información de salida: Un mensaje de texto indicando si es mayor.
//Variables: num1,num2 (enteros)
//################################################################################
//Diseño
//1. Leer los números
//2. Si el número 1 es mayor que el segundo escribir "El primero es mayor"
//3. En caso contrario escribir "El primero no es mayor que el segundo"
//################################################################################

Proceso CalcularMayor
	Definir num1, num2 como Entero;
	Escribir "Dime el número 1:";
	Leer num1;
	Escribir "Dime el número 2:";
	Leer num2;
	Si num1>num2 Entonces
		Escribir "Número 1 es mayor que número 2";
	SiNo
		Escribir "Número 1 NO es mayor que número 2";
	FinSi
FinProceso
