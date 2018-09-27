//################################################################################
//Dados dos números, mostrar la suma, resta, división y multiplicación de ambos.
//################################################################################
//Análisis
//Tenemos que leer dos números, calcular la suma, resta, multiplicación y división
//Datos de entrada: Los dos números (real)
//Información de salida: suma, resta, multiplicación, división(real)
//Variables: num1, num2 (Real). 
//Considero que las salidas no es necesario guardarla en variables.
//################################################################################
//Diseño
//1. Leer los números
//2. Mostrar suma,resta, multiplicación y división
//################################################################################

Proceso Calcular
	Definir num1,num2 Como Real;
	Escribir Sin Saltar "Introduce el número 1:";
	Leer num1;
	Escribir Sin Saltar "Introduce el número 2:";
	Leer num2;
	Escribir "La suma es ", num1+num2;
	Escribir "La resta es ", num1-num2;
	Escribir "La multiplicación es ", num1*num2;
	Escribir "La división es ", num1/num2;
FinProceso
