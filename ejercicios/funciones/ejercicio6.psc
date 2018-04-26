//################################################################################
//Procedimiento CalcularAreaPerimetro: recibe el radio de una circunferencia y
//devuelve el área y el perímetro.
//Parámetros de entrada: radio (real)
//Parámetros de entrada y salida: área y perímetro (real)
//################################################################################

Funcion CalcularAreaPerimetro(radio,area por Referencia,perimetro Por Referencia)
	area <- PI * radio ^ 2;
	perimetro <- 2 * PI * radio;
FinFuncion

//################################################################################
//Diseñar una función que calcule el área y el perímetro de una circunferencia. 
//Utiliza dicha función en un programa principal que lea el radio de una 
//circunferencia y muestre su área y perímetro.
//################################################################################

Proceso Circunferencia
	Definir radio,area,perimetro Como Real;
	Escribir Sin Saltar "Introduce el radio:";
	Leer radio;
	CalcularAreaPerimetro(radio,area,perimetro);
	Escribir "Área:",area;
	Escribir "Perímetro:",perimetro;
FinProceso
