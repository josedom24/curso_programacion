Proceso FechaCorrecta
	Definir dia,mes,year Como Entero;
	Definir dias_del_mes Como Entero;
	Escribir Sin Saltar "Introduce el dia:";
	Leer dia;
	Escribir Sin Saltar "Introduce el mes:";
	Leer mes;
	Escribir Sin Saltar "Introduce el año:";
	Leer year;
	Segun mes Hacer
		1,3,5,7,8,10,12:
			dias_del_mes<-31;
		4,6,9,11:
			dias_del_mes<-30;
		2:
			Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
				dias_del_mes <- 29;
			SiNo
				dias_del_mes <- 28;
			FinSi
		De Otro Modo:
				Escribir "Fecha incorrecta";
		FinSegun
		Si dia<0 O dia>dias_del_mes Entonces
			Escribir "Fecha incorrecta";
		SiNo
			Escribir "Fecha correcta";
		FinSi
FinProceso
