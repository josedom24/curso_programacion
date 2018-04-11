//Escribe un programa que diga si un número introducido por teclado es o no primo. 
//Un número primo es aquel que sólo es divisible entre él mismo y la unidad. 
//Nota: Es suficiente probar hasta la raíz cuadrada del número para ver si es divisible por algún otro número.
Proceso EsPrimo
	Definir num,i Como Entero;
	Definir es_primo Como Logico;
	es_primo<-Verdadero;
	Escribir Sin Saltar "Introduce un número para comprobar si es primo:";
	Leer num;
	Para i<-2 hasta rc(num) Hacer
		Si num % i = 0 Entonces
			es_primo <- Falso;
		FinSi
	FinPara
	Si es_primo Entonces
		Escribir "Es Primo";
	SiNo
		Escribir "No es Primo";
	FinSi
	
FinProceso
