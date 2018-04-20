//Una empresa les paga a sus empleados con base en las horas trabajadas en la semana. 
//Realice un algoritmo para determinar el sueldo semanal de N trabajadores 
//y, adem�s, calcule cu�nto pagó la empresa por los N empleados.
Proceso CalcularSalario
	Definir horas_por_semana, horas_acum Como Entero;
	Definir sueldo_por_horas Como Real;
	Definir trabajadores,trabajador como Entero;
	horas_acum<-0;
	Escribir Sin Saltar "¿Cuantos trabajadores tiene la empresa?:";
	Leer trabajadores;
	Escribir Sin Saltar "Sueldo por hora:";
	Leer sueldo_por_horas;
	Para trabajador<-1 hasta trabajadores Hacer
		Escribir Sin Saltar "¿Cuantás horas ha trabajado el trabajador ",trabajador," ?";
		Leer horas_por_semana;
		horas_acum<-horas_acum+horas_por_semana;
	FinPara
	Escribir "El pago alos ",trabajadores," trabajadores es :",horas_acum*sueldo_por_horas;
FinProceso
