//################################################################################
//Una empresa tiene el registro de las horas que trabaja diariamente un empleado 
//durante la semana (seis días) y requiere determinar el total de éstas, así como 
//el sueldo que recibirá por las horas trabajadas.
//################################################################################
//Análisis
//Calcular el sueldo y las horas trabajadas de un empleado en una semana (6 días).
//Hay que ir introduciendo la cantidad de horas que trabaja cada día.
//Tenemos que saber cuanto se paga la hora trabajada.
//Hay que ir acumulando las horas trabajadas cada día, para poder calcular el sueldo.
// Datos de entrada: Sueldo por hora, horas.
// Información de salida: Las horas acumuladas, y el sueldo de la semana.
// Variables: sueldo_por_hora (Real),horas, horas_acum, dia(entero)
//################################################################################
//Diseño
//1.- Incializo las horas acumuladas
//2.- Leer sueldo por hora (sueldo)
//3.- Desde el día 1 al 6
//		4.- Leer horas trabajadas
//		5.- Acumular las horas trabajadas
//6.- Mostrar Las horas acumuladas
//7.- Mostrar el sueldo -> horas acumuladas * sueldo por hora
//################################################################################

Proceso CalcularSueldo
	Definir sueldo_por_hora Como Real;
	Definir horas,horas_acum como Entero;
	Definir dia Como Entero;
	horas_acum<-0;
	Escribir sin saltar "Introduce el sueldo por hora:";
	Leer sueldo_por_hora;
	Para dia<-1 hasta 6 Hacer
		Escribir "¿Cuántas horas has trabajado el día ",dia,"?:";
		Leer horas;
		horas_acum <- horas_acum + horas;
	FinPara
	Escribir "Horas acumuladas en la semana:",horas_acum;
	Escribir "Sueldo:",sueldo_por_hora*horas_acum;
FinProceso
