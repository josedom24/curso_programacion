//################################################################################
//Realizar un algoritmos que lea un número y que muestre su raíz cuadrada 
//y su raíz cúbica.
//PSeInt no tiene ninguna función predefinida que permita calcular la raíz cúbica,
//¿cómo se puede calcular?
//################################################################################
//Análisis
//Se piden número y se muestra la raíz cuadrada y la cúbica. 
//Datos de entrada: numero (entero).
//Información de salida: raíz cuadrada, raíz cúbica(real).
//Variables: num (entero).
//################################################################################
//Diseño
//1. Leer el número.
//2. Calcular raíz cuadrada: tenemos una función
//3. Calcular raíz cúbica: es igual que elevar el número a 1/3
//4. Mostrar las raíces
//################################################################################

Proceso CalcularRaices
	Definir num como Entero;
	Escribir "Dime el número:";
	Leer num;
	Escribir "Raíz cuadrada:", raiz(num);
	Escribir "Raíz cúbica:", num ^ (1/3);
FinProceso 