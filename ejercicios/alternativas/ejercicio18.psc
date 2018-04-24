//################################################################################
//Realiza un programa que pida el dí­a de la semana (del 1 al 7) y escriba 
//el dí­a correspondiente. 
// Si introducimos otro número nos da un error.
//################################################################################
// Análisis
// Leer un día de la semana como número y mostrar el día que corresponde.
// Si el número introducido es incorrecto mostrar mensaje de error.
// Datos de entrada: día (entero)
// Información de salida: nombre del día
// Variables: día (entero)
//################################################################################
// Diseño
// 1. Leer día de la semana como entero
// 2. Según el valor del día mostrar el nombre del día de la semana
// 3. Si es un día incorrecto, mostrar mensaje de error
//################################################################################

Proceso DiaDeLaSemana
	Definir dia Como Entero;
	Escribir Sin Saltar "Dime un día de la semana (1-7):";
	Leer dia;
	Segun dia Hacer
		1:
			Escribir "Lunes";
		2:
			Escribir "Martes";
		3:
			Escribir "Miércoles";
		4:
			Escribir "Jueves";
		5:
			Escribir "Viernes";
		6:
			Escribir "Sábado";
		7:
			Escribir "Domingo";
		De Otro Modo:
			Escribir "Día incorrecto";
	FinSegun
FinProceso
	