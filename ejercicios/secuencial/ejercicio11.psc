//################################################################################
//Pide al usuario dos números y muestra la "distancia" entre ellos 
//(el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).
//################################################################################
//Análisis
//Se piden dos números y se calcula el valor absoluto de la diferencia.
//Datos de entrada: dos números (entero).
//Información de salida: distancia (entero).
//Variables: num1,num2(entero).
//################################################################################
//Diseño
//1. Leer los dos números.
//2. Mostrar distancia (valor absoluto de la diferencia)
//################################################################################

Proceso CalcularDistancia
	Definir num1, num2 como Entero;
	Escribir "Dime el número1:";
	Leer num1;
	Escribir "Dime el número2:";
	Leer num2;
	Escribir "Distancia:", abs(num1-num2);
FinProceso