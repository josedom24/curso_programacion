//################################################################################
//Escribe un programa que diga si un número introducido por teclado es o no primo. 
//Un número primo es aquel que sólo es divisible entre él mismo y la unidad. 
//Nota: Es suficiente probar hasta la raíz cuadrada del número para ver si es 
//divisible por algún otro número.
//################################################################################
//Análisis
//Leemos un número y vamos comprobando si es divisible entre 2 hasta la raíz
//cuadrada del número. Si es divisible por algún número no es primo.
//Si no es divisible por ningún número es primo.
//Para saber si es divisible usamos el operador módulo.
// Datos de entrada: el número a comprobar si es primo o no
// Información de salida: Un mensaje diciendo si es primo o no
// Variables: numero_es_primo (entero), num (entero) contador desde 2 hasta 
//raíz cuadrada del num_es_primo, es_primo (lógico)
//################################################################################
//Diseño
//1.- Supongo que el número es primo -> es_primo<-Verdadero
//2.-Leer num_es_primo
//3.- Desde num = 2 hasta raíz(numero_es_rpimo)
//		4.- Si numero_es_primo es divisible entre num -> es_primo<-Falso
//5.- Si es_primo -> Mostrar "Es primo"
//6.- Si no -> Mostrar "No es primo"
//################################################################################

Proceso EsPrimo
	Definir numero_es_primo,num Como Entero;
	Definir es_primo Como Logico;
	es_primo<-Verdadero;
	Escribir Sin Saltar "Introduce un número para comprobar si es primo:";
	Leer numero_es_primo;
	Para num<-2 hasta rc(numero_es_primo) Hacer
		Si numero_es_primo % num = 0 Entonces
			es_primo <- Falso;
		FinSi
	FinPara
	Si es_primo Entonces
		Escribir "Es Primo";
	SiNo
		Escribir "No es Primo";
	FinSi
FinProceso
