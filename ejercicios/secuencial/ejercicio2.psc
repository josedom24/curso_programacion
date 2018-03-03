//Calcular el perímetro y área de un rectángulo dada su base y su altura.
//Análisis
//Tenemos que leer la base y la altura del triangulo y calcular el perímetro y el área
//Datos de entrada: base(real), altura(real)
//Información de salida: perimetro(real) y area(real)
//Variables: base, altura, perimetro y area (Real)
//Diseño
//1. Leer base y altura
//2. Calcular perímetro(2*base + 2*altura)
//3. Calcular área (base * altura
//4. Mostrar perímetro y área
Proceso Rectangulo
	Definir base,altura,perimetro,area Como Real;
	Escribir "Introduce la base:";
	Leer base;
	Escribir "Introduce la altura:";
	Leer altura;
	perimetro <- 2 * base + 2 * altura;
	area <- base * altura;
	Escribir "El perímetro es ",perimetro," y el área es ",area;
FinProceso
