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

Funcion dias<-DiasDesde1900(day,month,year)
	Definir dias como entero;
	Definir a como Entero;
	dias<-0;
	Para a<-1900 hasta year-1 Hacer
		Si EsBisiesto(a) Entonces
			dias<-dias+366;
		SiNo
			dias<-dias+365;
		FinSi
	FinPara
	dias<-dias+Calcular_Dia_Juliano(day,month,year);
FinFuncion

Funcion nombremes <- DevolverNombreMes(month)
	Definir nombremes Como Caracter;
	Segun month Hacer
		1:
			nombremes<-"Enero";
		2:
			nombremes<-"Febrero";
		3:
			nombremes<-"Marzo";
		4:
			nombremes<-"Abril";
		5:
			nombremes<-"Mayo";
		6:
			nombremes<-"Junio";
		7:
			nombremes<-"Julio";
		8:
			nombremes<-"Agosto";
		9:
			nombremes<-"Septiembre";
		10:
			nombremes<-"Octubre";
		11:
			nombremes<-"Noviembre";
		12:
			nombremes<-"Diciembre";
	FinSegun
	
	
FinFuncion

Funcion Calendario(month,year)
	Definir dias_mes,dia1,i como Entero;
	dias_mes<-DiasDelMes(month,year);
	dia1<-DiasDesde1900(1,month,year);
	dia1<-dia1 % 7;
		dia1<-dia1-1;
	Si dia1=-1 Entonces
		dia1<-6;
	FinSi
	Escribir "";
	Escribir DevolverNombreMes(month),"/",year;
	Escribir "";
	Escribir " L   M   M   J   V   S   D";
	Escribir "==========================";
	Para i<-0 Hasta dia1-1 Hacer
		Escribir sin saltar "    ";
	FinPara
	Para i<-1 Hasta dias_mes Hacer
		Si i<10 Entonces
			Escribir sin saltar " ",i,"  ";
		SiNo
			Escribir sin saltar i,"  ";
		FinSi
		
		dia1<-dia1+1;
		Si dia1>6 Entonces
			Escribir "";
			dia1<-0;
		FinSi
	FinPara
	Escribir "";
FinFuncion

Proceso ProgramaCalendario
	Definir month,year como Entero;
	Escribir Sin Saltar "Mes:";
	Leer month;
	Escribir Sin Saltar "Año:";
	Leer year;
	Calendario(month,year);
	
FinProceso
