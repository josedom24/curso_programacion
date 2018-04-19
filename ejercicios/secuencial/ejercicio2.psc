//################################################################################
//Calcular el perí­metro y área de un rectángulo dada su base y su altura.
//################################################################################
//Análisis
//Tenemos que leer la base y la altura del triangulo y calcular el perí­metro y el 
//áreea
//Datos de entrada: base(real), altura(real)
//Información de salida: perimetro(real) y area(real)
//Variables: base, altura, perimetro y area (Real)
//################################################################################
//Diseño
//1. Leer base y altura
//2. Calcular perí­metro(2*base + 2*altura)
//3. Calcular area (base * altura
//4. Mostrar perí­metro y area
//################################################################################

Proceso Rectangulo
	Definir base,altura,perimetro,area Como Real;
	Escribir "Introduce la base:";
	Leer base;
	Escribir "Introduce la altura:";
	Leer altura;
	perimetro <- 2 * base + 2 * altura;
	area <- base * altura;
	Escribir "El perí­metro es ",perimetro," y el area es ",area;
FinProceso
