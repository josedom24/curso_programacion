//################################################################################
//Algoritmo que pida tres números y los muestre ordenados (de mayor a menor);
//################################################################################
// Análisis
// Pedimos por teclado tres números, se comparan para mostrarlos ordenados.
// Datos de entrada: num1, num2, num3 (entero)
// Información de salida: Los tres número ordenados de mayor a menor
// Variables: num1, num2, num3 (entero)
//################################################################################
// Diseño
// 1. Leer num1,num2,num3
// 2. Si num1>num2>num3 mostrar num1,num2,num3
// 3. Si num2>num1>num3 mostrar num2,num1,num3
// 4. Si num2>num3>num1 mostrar num2,num3,num1
// 5. Si num3>num2>num1 mostrar num3,num2,num1
// 6. Si num3>num1>num2 mostrar num3,num1,num2
//################################################################################

Proceso OrdenarNumeros
	Definir num1,num2,num3 Como Entero;
	Escribir "Dime el número 1:";
	Leer num1;
	Escribir "Dime el número 2:";
	Leer num2;
	Escribir "Dime el número 3:";
	Leer num3;
	Si num1>num2 Y num1>num3 Entonces
		Si num2>num3 Entonces
			Escribir num1," ",num2," ",num3;
		SiNo
			Escribir num1," ",num3," ",num2;
		FinSi
	FinSi
	Si num2>num1 Y num2>num3 Entonces
		Si num1>num3 Entonces
			Escribir num2," ",num1," ",num3;
		SiNo
			Escribir num2," ",num3," ",num1;
		FinSi
	FinSi
	Si num3>=num1 Y num3>=num2 Entonces
		Si num1>num2 Entonces
			Escribir num3," ",num1," ",num2;
		SiNo
			Escribir num3," ",num2," ",num1;
		FinSi
	FinSi
	
FinProceso
