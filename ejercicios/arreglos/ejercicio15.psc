Proceso Quiniela
	Definir indice,NUMEQUIPOS Como Entero;
	Definir equipos Como Caracter;
	Dimension equipos[15,2];
	Definir resultados Como Entero;
	Dimension resultados[15,2];
	NUMEQUIPOS<-15;
	Para indice<-0 hasta NUMEQUIPOS-1 Hacer
		Escribir Sin Saltar "Introduce el nombre del equipo 1 del partido ", indice+1,":";
		Leer equipos[indice,0];
		Escribir Sin Saltar "Introduce los goles metidos por el equipo 1 del partido ", indice+1,":";
		Leer resultados[indice,0];
		Escribir Sin Saltar "Introduce el nombre del equipo 2 del aprtido ", indice+1,":";
		Leer equipos[indice,1];
		Escribir Sin Saltar "Introduce los goles metidos por el equipo 2 del partido ", indice+1,":";
		Leer resultados[indice,1];
	FinPara
	Escribir "QUINIELA";
	Escribir "========";
	Para indice<-0 hasta NUMEQUIPOS-1 Hacer
		Si resultados[indice,0]>resultados[indice,1] Entonces
			Escribir equipos[indice,0], " - ",equipos[indice,0]," -> 1";
		SiNo
			Si resultados[indice,0]<resultados[indice,1] Entonces
				Escribir equipos[indice,0], " - ",equipos[indice,0]," -> 2";
			SiNo
				Escribir equipos[indice,0], " - ",equipos[indice,0]," -> X";
			FinSi
		FinSi
	FinPara
FinProceso
