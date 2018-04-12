Proceso CalcularSueldo
	Definir sueldo Como Real;
	Definir horas,horas_acum como Entero;
	Definir dia Como Entero;
	horas_acum<-0;
	Escribir sin saltar "Introduce el sueldo por hora:";
	Leer sueldo;
	Para dia<-1 hasta 6 Hacer
		Escribir "¿Cuántas horas has trabajado el dia ",dia,"?:";
		Leer horas;
		horas_acum <- horas_acum + horas;
	FinPara
	Escribir "Horas acumuladas en la semana:",horas_acum;
	Escribir "Sueldo:",sueldo*horas_acum;
FinProceso
