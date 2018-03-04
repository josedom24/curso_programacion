//Realizar un algoritmos que lea un número y que muestre su raíz cuadrada y su raíz cúbica. PSeInt no tiene ninguna función predefinida que permita calcular la raíz cúbica, ¿Cómo se puede calcular?

//Análisis
//Se piden número y se muestra la raíz cuadrada y la cúbica. 
//Datos de entrada: numero (entero).
//Información de salida: raíz cuadrada, raíz cúbica(real).
//Variables: num (entero).
//Diseño
//1. Leer el número.
//2. Calular raíz cuadrada: tenemos una función
//3. Calcular raíz cúbica: es igual ue elevar l número a 1/3
//4. NMostrar las raices
Proceso CalcularRaices
	Definir num como Entero;
	Escribir "Dime el número:";
	Leer num;
	Escribir "Raíz cuadrada:", raiz(num);
	Escribir "Raíz cúbica:", num ˆ (1/3);
FinProceso 