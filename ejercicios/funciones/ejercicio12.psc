Funcion esvalida <- ValidarFecha(day,month,year)
	Definir esvalida Como Logico;
	Si day<1 o day>DiasDelMes(month,year) Entonces
		esvalida<-Falso;
	SiNo
		esvalida<-Verdadero;
	FinSi
FinFuncion


Funcion bisiesto <- EsBisiesto(year)
	Definir bisiesto como Logico;
	Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
		bisiesto <- Verdadero;
	SiNo
		bisiesto <- Falso;
	FinSi
FinFuncion

Funcion dias <- DiasDelMes(month,year)
	Definir dias Como Entero;
	Segun month Hacer
		1,3,5,7,8,10,12:
			dias<-31;
		4,6,9,11:
			dias<-30;
		2:
			Si EsBisiesto(year) Entonces
				dias<-29;
			SiNo
				dias<-28;
			FinSi
	FinSegun
FinFuncion

Funcion diaj <- Calcular_Dia_Juliano(day,month,year)
	Definir mes como Entero;
	definir diaj como Entero;
	diaj<-0;
	Para mes<-1 hasta month-1 Hacer
		diaj<-diaj + DiasDelMes(mes,year);
	FinPara
	diaj <- diaj + day;
FinFuncion

Funcion LeerFecha(day Por Referencia,month Por Referencia, year Por Referencia)
	Definir fechavalida Como Logico;
	Repetir
		Escribir Sin Saltar "Día:";
		Leer day;
		Escribir Sin Saltar "Mes:";
		Leer month;
		Escribir Sin Saltar "Año:";
		Leer year;
		fechavalida <- ValidarFecha(day,month,year);
		si no fechavalida Entonces
			Escribir "Fecha no válida";
		FinSi
	Hasta Que fechavalida;	
FinFuncion

Proceso DiaJuliano
	Definir d,m,a como Entero;
	LeerFecha(d,m,a);
	Escribir "Día Juliano: ",Calcular_Dia_Juliano(d,m,a);
FinProceso