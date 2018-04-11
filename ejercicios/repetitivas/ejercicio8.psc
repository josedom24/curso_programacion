//Escribe un programa que pida el limite inferior y superior de un intervalo. Si el límite inferior es mayor que el superior lo tiene que volver a pedir.
//A continuación se van introduciendo números hasta que introduzcamos el 0. Cuando termine el programa dará las siguientes informaciones:
//	* La suma de los números que están dentro del intervalo (intervalo abierto).
//	* Cuantos números están fuera del intervalo.
//	* He informa si hemos introducido algún número igual a los límites del intervalo.
Proceso Intervalo
	Definir lim_inf, lim_sup como Entero;
	Definir num como Entero;
	Definir suma_dentro_intervalo Como Entero;
	DEfinir cont_fuera_intervalo Como Entero;
	Definir igual_limites Como Logico;
	suma_dentro_intervalo <- 0;
	cont_fuera_intervalo <- 0;
	igual_limites <- Falso;
	
	Repetir
		Escribir "Introduce el límite inferior del intervalo:";
		Leer lim_inf;
		Escribir "Introduce el límite superior del intervalo:";
		Leer lim_sup;
		Si lim_inf>lim_sup Entonces
			Escribir "ERROR: El límite inferior debe ser menor que el superior.";
		FinSi
	Hasta Que lim_inf<=lim_sup;
	
	Escribir Sin Saltar "Introduce un número (0, para salir):";
	Leer num;
	Mientras num<>0 Hacer
		Si num>lim_inf Y num<lim_sup Entonces
			suma_dentro_intervalo <- suma_dentro_intervalo + num;
		SiNo
			cont_fuera_intervalo <- cont_fuera_intervalo + 1;
		FinSi
		Si num=lim_inf O num=lim_sup Entonces
			igual_limites <- Verdadero;
		FinSi
		Escribir Sin Saltar "Introduce un número (0, para salir):";
		Leer num;
	FinMientras
	Escribir "La suma de los número dentro del intervalo es ",suma_dentro_intervalo;
	Escribir "La cantidad de números fuera del intervalo es ",cont_fuera_intervalo;
	Si igual_limites Entonces
		Escribir "Se ha introducido algún número igual a los límites del intervalo.";
	SiNo
		Escribir "No se ha introducido ningún número igual a los límites del intervalo.";
	FinSi
	
	
	
FinProceso
