Funcion CalcularAreaPerimetro(radio,area por Referencia,perimetro Por Referencia)
	area <- PI * radio ^ 2;
	perimetro <- 2 * PI * radio;
FinFuncion
Proceso Circunferencia
	Definir radio,area,perimetro Como Real;
	Escribir Sin Saltar "Introduce el radio:";
	Leer radio;
	CalcularAreaPerimetro(radio,area,perimetro);
	Escribir "Area:",area;
	Escribir "Perímetro:",perimetro;
FinProceso
