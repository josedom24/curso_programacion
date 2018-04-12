//Una empresa les paga a sus empleados con base en las horas trabajadas en la semana. 
//Para esto, se registran los días que trabajó y las horas de cada día. 
//Realice un algoritmo para determinar el sueldo semanal de N trabajadores 
//y además calcule cuánto pagó la empresa por los N empleados.
Proceso CalcularSalario2
	Definir dias,horas Como Entero;
	Definir horas_por_trabajador,horas_acum Como Entero;
	Definir dia, trabajador Como Entero;
	Definir sueldo_por_horas Como Real;
	Definir trabajadores como Entero;
	
	Escribir Sin Saltar "¿Cuantos trabajadores tiene la empresa?:";
	Leer trabajadores;
	Escribir Sin Saltar "Sueldo por hora:";
	Leer sueldo_por_horas;
	horas_acum<-0;
	Para trabajador<-1 hasta trabajadores Hacer
		horas_por_trabajador<-0;
		Escribir Sin Saltar "¿Cuantás días ha trabajado el trabajador ",trabajador," ?";
		Leer dias;
		Para dia<-1 hasta dias Hacer
			Escribir Sin Saltar "¿Cuantás horas ha trabajado el trabajador ",trabajador," el dia ",dia,"?:";
			Leer horas;
			horas_por_trabajador<-horas_por_trabajador+horas;
		FinPara
		horas_acum<-horas_acum+horas_por_trabajador;
	FinPara
	Escribir "El pago a los ",trabajadores," trabajadores es :",horas_acum*sueldo_por_horas;
FinProceso
