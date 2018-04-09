//Realiza un programa que pida por teclado el resultado (dato entero) obtenido al lanzar un dado de seis caras y muestre por pantalla el número en letras (dato cadena) de la cara opuesta al resultado obtenido.
//* Nota 1: En las caras opuestas de un dado de seis caras están los números: 1-6, 2-5 y 3-4.
//* Nota 2: Si el número del dado introducido es menor que 1 ó mayor que 6, se mostrará el mensaje: "ERROR: número incorrecto.".

Proceso Dado
	Definir cara Como Entero;
	Escribir Sin Saltar "Introduce el número de la cara:";
	Leer cara;
	Segun cara Hacer
		1:
			Escribir "SEIS";
		2:
			Escribir "CINCO";
		3:
			Escribir "CUATRO";
		4:
			Escribir "TRES";
		5:
			Escribir "DOS";
		6:
			Escribir "UNO";
		De Otro Modo:
			Escribir "Error: número incorrecto.";
	FinSegun
FinProceso
