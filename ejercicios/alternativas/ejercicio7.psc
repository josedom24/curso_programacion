//################################################################################
// Realiza un algoritmo que calcule la potencia, para ello pide por teclado 
//la base y el exponente. Pueden ocurrir tres cosas:
// * El exponente sea positivo, sólo tienes que imprimir la potencia.
// * El exponente sea 0, el resultado es 1.
// * El exponente sea negativo, el resultado es 1/potencia con el exponente positivo.
//################################################################################
// Análisis
// Pedimos por teclado dos números: base y exponente
// Tenemos que comprobar el exponente: si es 0 la potencia es 1, 
// si es menor que 0 la potencia es 1/potencia (con el exponente positivo) 
// y si es mayor que 0 se calcula la potencia.
// Datos de entrada: base,exponente (entero)
// Información de salida: Valor de la potencia
// Variables: base,exponente (entero)
//################################################################################
// Diseño
// 1. Leer la base y el exponente
// 2. Si el exponente es igual a 0 se calcula y muestra el resultado de la potencia
// 3. En caso contrario, si es igual a 0, el resultado de la potencia es 1.
// 4. En caso contrario,el resultado de la potencia es 1/potencia 
//(con el exponente positivo).
//################################################################################

Proceso CalcularPotencia
	Definir base,exponente Como Entero;
	Escribir 'Dime la base:';
	Leer base;
	Escribir 'Dime el exponente:';
	Leer exponente;
	Si exponente>0 Entonces
		Escribir 'La potencia es ',base^exponente;
	SiNo
		Si exponente=0 Entonces
			Escribir 'La potencia es 1';
		SiNo
			Escribir 'La potencia es ',1/(base^abs(exponente));
		FinSi
	FinSi
FinProceso

