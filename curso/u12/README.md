# Funciones matemáticas

Una **función** es un subprograma que resuelve un problema determinado. Las funciones pueden tener **parámetros de entrada** y suelen devolver un valor de un tipo determinado.

En el pseudocódigo que estamos utilizando se pueden utilizar varias funciones matemáticas:

* `rc(número)` o `raiz(número)`: devuelve la raíz cuadrada del número.
* `abs(número)`: Devuelve el valor absoluto del número
* `ln(número)`: Devuelve el logaritmo natural del número
* `exp(número)`: Devuelve la función exponencial del número.
* `sen(número)`: Devuelve el seno de número.
* `cos(número)`: Devuelve el coseno de número.
* `tan(número)`: Devuelve la tangente de número.
* `asen(número)`: Devuelve el arcoseno de número.
* `acos(número)`: Devuelve el arcocoseno de número.
* `atan(número)`: Devuelve el arcotangente de número.
* `trunc(número)`: Devuelve la parte entera de número.
* `redon(número)`: Devuelve el entero más cercano a número.
* `azar(número)`: Devuelve el entero aleatorio en el rango [0;número-1].
* `aleatorio(numero1,numero2)`: Devuelve el entero aleatorio en el rango [numero1;numero2].

Las funciones trigonométricas reciben el ángulo en radianes. Para facilitar las conversiones se puede usar la constante PI (Ej: si A es un ángulo en grados, su coseno se obtiene con `cos( A * PI / 180 )`).

## Ejemplo

	Proceso Funciones_Matematicas
		Escribir "Raíz cuadrada de 9: ",rc(9);
		Escribir "Valor absoluto de -3: ",abs(-3);
		Escribir "Seno de 90 grados: ",sen(90 * PI / 180);
		Escribir "Truncamos 3.7: ",trunc(3.7);
		Escribir "Redondeamos 2.7: ",redon(2.7);
		Escribir "Un número al azar del 0 al 9: ",azar(10);
		Escribir "Un número al azar entre 10 y 20: ", aleatorio(10,20);
	FinProceso

El resultado es:

	Raíz cuadrada de 9: 3
	Valor absoluto de -3: 3
	Seno de 90 grados: 1
	Truncamos 3.7: 3
	Redondeamos 2.7: 3
	Un número al azar del 0 al 9: 6
	Un número al azar entre 10 y 20: 14

	