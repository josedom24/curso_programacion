//################################################################################
//Dados los catetos de un triángulo rectángulo, calcular su hipotenusa.
//################################################################################
//Análisis
//Tenemos que leer la longitud de los dos catetos y calcular la hipotenusa. 
//(Teorema de Pitágoras)
//Variables de entrada: cateto1(real), cateto2(real)
//Variables de salida: hipotenusa(real)
//################################################################################
//Diseño
// 1. Leer la longitud de los catetos
// 2. Calcular hipotenusa (En un triángulo rectángulo el cuadrado de la hipotenusa 
// es igual a la suma de los cuadrados de los catetos. )
// Por lo tanto la hipotenusa es igual a la raí­z cuadrada de la suma de los 
// cuadrados de los catetos.
// 3. Mostrar la hipotenusa
//################################################################################

Proceso CalcularHipotenusa
	Definir cateto1,cateto2,hipotenusa Como Real;
	Escribir "Introduce el cateto 1:";
	Leer cateto1;
	Escribir "Introduce la cateto 2:";
	Leer cateto2;
	hipotenusa <- raiz(cateto1 ^ 2 + cateto2 ^ 2);
	Escribir "La hipotenusa es ",hipotenusa;
FinProceso
