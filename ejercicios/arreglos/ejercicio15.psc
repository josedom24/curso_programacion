//################################################################################
// Crear un programa de ordenador para gestionar los resultados de la quiniela de 
//fútbol. Para ello vamos a utilizar dos tablas:
// Equipos: Que es una tabla de cadenas donde guardamos en cada columna el nombre 
//de los equipos de cada partido. En la quiniela se indican 15 partidos.
// Resultados: Es una tabla de enteros donde se indica el resultado. También tiene 
//dos columnas, en la primera se guarda el número de goles del equipo que está 
//guardado en la primera columna de la tabla anterior, y en la segunda los goles 
//del otro equipo.
//El programa irá pidiendo los nombres de los equipos de cada partido y el 
//resultado del partido, a continuación se imprimirá la quiniela de esa jornada.
//################################################################################
//Análisis
//Recorro las tablas para inicializar el nombre de los dos quipos y el resultado del partido
//Recorro las tablas, muestro el nombre de los equipos
// Un 1 si el que juega en casa ha ganado (primer equipo gana)
// Un 2 si el que juega de visitante ha ganado (segundo equipo gana)
// Una X si hay empate
// Datos de entrada: Nombre de los dos quipos y el resultado del partido (para cada partido)
// Información de salida: Los nombres de los equipos y el resultado de la quiniela
// Variables: partidos (tabla de 15 x 2 cadenas), resultados (tabla de 15 x 2 enteros)
//			  indice,num_partidos (entero)
//################################################################################
	
Proceso Quiniela
	Definir indice,num_partidos Como Entero;
	Definir partidos Como Caracter;
	Dimension partidos[15,2];
	Definir resultados Como Entero;
	Dimension resultados[15,2];
	num_partidos<-15;
	//Recorro las tablas para incializar el nombre de los dos quipos y el resultado del partido
	Para indice<-1 hasta num_partidos Hacer
		Escribir Sin Saltar "Introduce el nombre del equipo 1 del partido ", indice,":";
		Leer partidos[indice,1];
		Escribir Sin Saltar "Introduce el nombre del equipo 2 del partido ", indice,":";
		Leer partidos[indice,2];
		Escribir Sin Saltar "Introduce los goles metidos por el equipo ",partidos[indice,1],": ";
		Leer resultados[indice,1];
		Escribir Sin Saltar "Introduce los goles metidos por el equipo ",partidos[indice,2],": ";
		Leer resultados[indice,2];
	FinPara
	Escribir "QUINIELA";
	Escribir "========";
	
	//Recorro las tablas, muestro el nombre de los equipos
	// Un 1 si el que juega en casa ha ganado (primer equipo gana)
	// Un 2 si el que juega de visitante ha ganado (segundo equipo gana)
	// Una X si hay empate
	Para indice<-1 hasta num_partidos Hacer
		Si resultados[indice,1]>resultados[indice,2] Entonces
			Escribir partidos[indice,1], " - ",partidos[indice,2]," -> 1";
		SiNo
			Si resultados[indice,1]<resultados[indice,2] Entonces
				Escribir partidos[indice,1], " - ",partidos[indice,2]," -> 2";
			SiNo
				Escribir partidos[indice,1], " - ",partidos[indice,2]," -> X";
			FinSi
		FinSi
	FinPara
FinProceso
