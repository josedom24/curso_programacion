//################################################################################
//Escribe un programa que pida el limite inferior y superior de un intervalo. 
//Si el límite inferior es mayor que el superior lo tiene que volver a pedir.
//A continuación se van introduciendo números hasta que introduzcamos el 0. 
//Cuando termine el programa dará las siguientes informaciones:
//	* La suma de los números que están dentro del intervalo (intervalo abierto).
//	* Cuantos números están fuera del intervalo.
//	* He informa si hemos introducido algún número igual a los límites del intervalo.
//################################################################################
//Análisis
//Pedimos un intervalo (límite inferior y superior)
//Nos tenemos que asegurar que el límite inferior sea menor que el superior.
//Se van pidiendo números hasta que se introduzca el 0.
//Si el numero pertenece al intervalo -> lo voy sumando (necesito un acumulador)
//Si el número no pertenece al intervalo, lo cuento (necesito un contador)
//Si el número es igual a algún límite, lo índico (necesito un indicador)
//Al final muestro la suma de los números que pertenecen al intervalo.
//Muestro el contador de número que no pertenecen al intervalo.
//Indico si hemos introducido un número igual a algún límite
// Datos de entrada:límite superior e inferior del intervalo y números.
// Información de salida:La suma de los que pertenecen al intervalo,
//						 el contador de los números que no pertenecen al intervalo
//						 indico si un número ha sido igual a algún intervalo
// Variables:lim_inf, lim_sup, num, suma_dentro_intervalo, cont_fuera_intervalo (entero)
//			 igual_limites (Lógico)
//################################################################################
//Diseño
//1.- Inicializo el acumulador, el contador y el indicado
//2.-Repetir -> ller lim_inf y lim_sup hasta que lim_inf<lim_sup
//3.-Leer num
//4.- Mientras num sea distinto de 0
//		5.-Si num pertenece al intervalo -> acumula la suma
//		6.-Sino -> incremento contador
//		7.- Si es igual a algún intervalo -> Lo indico (indicador a Verdadero)
//		8.- Leer num
// 9.-Muestro la suma de los números pertenecientes al intervalo
// 10.-Muestro el contador de números no pertenecientes al intervalo
// 11.- Si el indicador = Verdadero -> Muestro "Un número = a intervalo"
// 12.- SiNo -> Muestro "No has introducido un número igual al intervalo
//################################################################################

Proceso Intervalo
	Definir lim_inf, lim_sup como Entero;
	Definir num como Entero;
	Definir suma_dentro_intervalo Como Entero;
	Definir cont_fuera_intervalo Como Entero;
	Definir igual_limites Como Logico;
	suma_dentro_intervalo <- 0;
	cont_fuera_intervalo <- 0;
	igual_limites <- Falso;
	//Me aseguro que el lim_inf es menor que el lim_sup
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
		//Pertenece al intervalo
		Si num>lim_inf Y num<lim_sup Entonces
			suma_dentro_intervalo <- suma_dentro_intervalo + num;
		SiNo
			//No pertenece al intervalo
			cont_fuera_intervalo <- cont_fuera_intervalo + 1;
		FinSi
		//Número igual a alguno de los límites
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
