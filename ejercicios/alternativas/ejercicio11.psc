//Programa que lea 3 datos de entrada A, B y C. Estos corresponden a las dimensiones de los lados de un triángulo. 
//El programa debe determinar que tipo de triangulo es, teniendo en cuenta los siguiente:
//Si se cumple Pitágoras entonces es triángulo rectángulo
//Si sólo dos lados del triángulo son iguales entonces es isósceles.
//Si los 3 lados son iguales entonces es equilátero.
//Si no se cumple ninguna de las condiciones anteriores, es escaleno.
// Análisis
// Pedir la medida de los tres lados de un triangulo:
// Si se cumple el teorema de pitagoras es un triangulo rectangulo
// Además, si tienes dos lados iguales y uno desigual, es isósceles
// O si tiene todos los lados iguales es equilatero
// o si son los tres distintos es escaleno.
// Datos de entrada: los tres lados del triangulo (real)
// Información de salida: Tipo de rectangulo
// Variables: ladoA, ladoB, ladoC (real)
// Diseño
// 1.Leer ladoA, ladoB, ladoC
// 2.Si se cumple el teorema de pitagoras ( tenemos que suponer que cualquier lado puede ser la hipotenusa) mostrar "Triangulo rectangulo"
// 3.Si tiene dos lados iguales y uno desigual mostrar "Triangulo Isósceles"
// 4. En otro caso, si tiene los tres lados iguales, mostrar "Triangulo Equilatero"
// 5. En otro caso, mostrar "Triangulo Escaleno"

// Ejemplos
//(3,4,5) rectangulo,escaleno
//(7,7,9.8994949366117) rectangulo,isósceles

Proceso TipoTriangulo
	Definir ladoA,ladoB,ladoC Como Real;
	Escribir Sin Saltar "Introduce longitud lado A:";
	Leer ladoA;
	Escribir Sin Saltar "Introduce longitud lado B:";
	Leer ladoB;
	Escribir Sin Saltar "Introduce longitud lado C:";
	Leer ladoC;
	
	//Pitágoras
	Si ladoA^2+ladoB^2 = ladoC^2 O ladoB^2+ladoC^2 = ladoA^2 O ladoC^2+ladoA^2 = ladoB^2 Entonces
		Escribir "Triangulo Rectangulo";
	FinSi
	//isósceles
	Si (ladoA=ladoB y ladoA<>ladoC) O (ladoB=ladoC y ladoB<>ladoA) O (ladoC=ladoA y ladoC<>ladoB) Entonces
		Escribir "Triangulo Isósceles";
	SiNo
		//equilátero
		Si ladoA=ladoB Y ladoA=ladoC Entonces
			Escribir "Triangulo Equilatero";
		SiNo
			Escribir "Triangulo Escaleno";
		FinSi
	FinSi
FinProceso
