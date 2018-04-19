//################################################################################
//Algoritmo que pida dos números e indique si el primero es mayor que el segundo.
//################################################################################
//Análisis
//Tenenemos que pedir dos números por teclado, compararlos 
//e indicar si el primero es mayor que el segundo o no.
//Datos de entrada: número1, número2 (entero)
//Información de salida: Un mensaje de texto indicando si es mayor.
//Variables: num1,num2 (enteros)
//################################################################################
//Diseño
//1. Leer los numeros
//2. Si el número1 es mayor que el segundo escribir "El primero es mayor"
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
