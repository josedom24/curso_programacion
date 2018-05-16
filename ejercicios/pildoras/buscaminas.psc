//################################################################################
//Función max: Función auxiliar que calcula el máximo de dos números
//################################################################################

Funcion num<- max(num1,num2)
	Definir num como Entero;
	Si num1>num2 Entonces
		num<-num1;
	SiNo
		num<-num2;	
	FinSi
FinFuncion

//################################################################################
//Función min: Función auxiliar que calcula el mínimo de dos números
//################################################################################

Funcion num<- min(num1,num2)
	Definir num como Entero;
	Si num1<num2 Entonces
		num<-num1;
	SiNo
		num<-num2;	
	FinSi
FinFuncion

//################################################################################
//Función IncializarTablero: Función que recibe las dos talbas: tablero, visible
//Incializa tablero con valores 0
//Incializa visible con valores Falso, indicando que están ocultas
//################################################################################

Funcion InicializarTablero(tablero Por Referencia,visible Por Referencia)
	Definir fila,colum como Entero;
	//Incializo el tablero con valor 0
	Para fila<-0 hasta 9 Hacer
		Para colum<-0 hasta 9 Hacer
			tablero[fila,colum]<-0;
		FinPara
	FinPara
	PonerMinas(tablero);
	//Incializo la tabla visible a falso indicando que ninguna celda está descubierta
	Para fila<-0 hasta 9 Hacer
		Para colum<-0 hasta 9 Hacer
			visible[fila,colum]<-Falso;
		FinPara
	FinPara
	
FinFuncion

//################################################################################
//Función PonerMinas: Función que recibe el tablero (tabla 10x10) por referencia
//Genera 10 posiciones de la tabla e incializa esas posiciones con minas (valor 9)
//Debe asegurar que se ponen 10 minas.
//Cada vez que se pone una mina se incrementa en 1 el valor de las celdas vecinas,
//si no son una mina
//################################################################################

Funcion PonerMinas(tablero Por Referencia)
	Definir num_minas,fila,colum,fila2,colum2 como Entero;
	num_minas<-0;
	//Vamos a poner 10 minas en el tablero
	Mientras num_minas<10 Hacer
		//Me aseguro que no haya ya una mina en la posición que se genera aleatoriamente
		Repetir
			fila<-azar(10);
			colum<-azar(10);
		Hasta Que tablero[fila,colum]<>9;
		//Reperesentamos la mina con el número 9
		tablero[fila,colum]<-9;
		//Ahora incremento el número de minas cercanas en las casillas vecinas
		Para fila2 <- max(0,fila-1) hasta min(9, fila+1) hacer
			Para colum2 <- max(0,colum-1) hasta min(9, colum+1) hacer
				Si tablero[fila2, colum2]<>9 entonces
					tablero[fila2,colum2]<-tablero[fila2,colum2]+1;
				FinSi
			FinPara
		FinPara
		num_minas<-num_minas+1;
	FinMientras
FinFuncion

//################################################################################
//Función DestaparCelda: Funcion que recibe por referencia las dos tablas y la
//fila y columna que se debe destapar.
//Si es una casilla que se puede destapar (la posición de la tabla visible es Falso)
//     Se destapa (posición de la tabla visible a Verdadero)
//     Si no hay minas cerca tengo que intentar destapar las vecinas
//            Si la celda vecina no es una mina, la destapo
//Función recursiva
//################################################################################

Funcion DestaparCelda(tablero Por Referencia,visible Por Referencia,fila,colum)
	Definir fila2,colum2 como Entero;
	//Si es una casilla que se puede destapar
	Si visible[fila,colum]=Falso Entonces
		visible[fila,colum]<- Verdadero;
		//Si no hay minas cerca tengo que intentar destapar las vecinas
		Si tablero[fila,colum]=0 Entonces
			Para fila2 <- max(0,fila-1) hasta min(9, fila+1) hacer
				Para colum2 <- max(0,colum-1) hasta min(9, colum+1) hacer
					Si tablero[fila2, colum2]<>9 entonces
						DestaparCelda(tablero,visible,fila2,colum2);
					FinSi
				FinPara
			FinPara
		FinSi
	FinSI
FinFuncion

//################################################################################
//Función ContarCeldasDestapadas: Funcion que recibe la tabla visible
//Recorre la tabla y cuenta los valores Verdaderos, este valor se devuelve
//Si el contador es 90 significa que hemos destapado todas las casillas: hemos ganado
//################################################################################

Funcion num <- ContarCeldasDestapadas(visible)
	Definir num,fila,colum como Entero;
	num<-0;
	Para fila<-0 hasta 9 Hacer
		Para colum<-0 hasta 9 Hacer
			Si visible[fila,colum] Entonces
				num<-num+1;
			FinSi
		FinPara
	FinPara
FinFuncion

//################################################################################
//Función ComprobarTablero: Funcion que recibe por referencia las dos tablas y la
//fila y columna que se debe destapar.
//Si la posición a destapar es una mina (=9) devuelve -1 (hemos perdido)
//SiNo destapo la casilla correspondiente y cuento las casillas detapadas y se devuelve
//################################################################################

Funcion resultado<-ComprobarTablero(tablero Por Referencia,visible por referencia,fila,colum)
	Definir resultado como Entero;
	//Si es una mina devuelvo -1
	Si tablero[fila,colum]=9 Entonces
		//Destapo la celda con la mina
		visible[fila,colum]<-Verdadero;
		resultado<- -1;
	SiNo
		DestaparCelda(tablero,visible,fila,colum);
		resultado<-ContarCeldasDestapadas(visible);
	FinSi
FinFuncion

//################################################################################
//Función EscribirTablero: Funcion que las dos tablas 
//Recorre las tablas y las muestras en pantalla
//Dependiendo del valor de cada posición de la tabla visible, muestra la posición
//de la tabla resultado.
//Si la posición está destapada (verdadero):
//      Si no tiene minas alrededor (valor 0) muestra un hueco
//      Si es una mina, muestro un *
//      SiNo muetro el valor de la casilla (indica cuantas minas tiene alrededor)
//SiNo la posición no es visible y muestro un #
//################################################################################

Funcion EscribirTablero(tablero,visible)
	Definir fila,colum como Entero;
	Definir titfilas,titcolum como Caracter;
	titfilas<-"0123456789";
	titcolum<-"    0 1 2 3 4 5 6 7 8 9";
	
	Escribir titcolum;
	Escribir "";
	//Recorro las tablas
	Para fila<-0 hasta 9 Hacer
		Escribir sin saltar subcadena(titfilas,fila,fila),"   ";
		Para colum<-0 hasta 9 Hacer
			//Si la celda es visible (está destapada)
			Si visible[fila,colum] Entonces
				//Celda que no tiene minas alrededor
				Si tablero[fila,colum]=0 Entonces
					Escribir sin saltar "  ";
				Sino
					//Es una mina
					Si tablero[fila,colum]=9 Entonces
						Escribir sin saltar "* ";
					//Muestro el número de minas que hay en los vecinos	
					SiNo
						Escribir Sin Saltar tablero[fila,colum]," ";
					FinSI
				FinSI
			//La casilla no es visible
			SiNo
				Escribir sin Saltar "# ";
			FinSI
		FinPara
		Escribir "";
	FinPara
FinFuncion

//################################################################################
//Programa BuscaMina
//Incilizo las tablas: tablero y visible
//Se repite:
//     Mostrar el tablero
//     Pedir fila y columna de casilla a destapar
//	   Comprobar tablero
//Hasta que la comprobación = -1 (has perdido hay una mina)
//O hasta que haya destapada todas las casillas (Has ganado)
//################################################################################


Proceso Buscaminas
	Definir tablero,fila,colum,resultado como Entero;
	Dimension tablero[10,10];
	Definir visible como Logico;
	Dimension visible[10,10];
	InicializarTablero(tablero,visible);
	Repetir
		EscribirTablero(tablero,visible);
		//Pedir fila y columna de casilla a destapar
		Repetir
			Escribir Sin Saltar "Indica fila:";
			Leer fila;
		Hasta que fila>=0 y fila<=9;
		Repetir
			Escribir Sin Saltar "Indica columna:";
			Leer colum;
		Hasta que colum>=0 y colum<=9;
		//Comprobamos el tablero
		resultado<-ComprobarTablero(tablero,visible,fila,colum);
		Borrar Pantalla;
	Hasta Que resultado=-1 O resultado=90;
	EscribirTablero(tablero,visible);
	//Has destapado una mina
	Si resultado=-1 Entonces
		Escribir "Has pisado una mina!!!!!";
		Escribir "GAME OVER";
	//has destapado todas las casillas
	SiNo
		Escribir "YOU ARE THE PLAYER ONE!!!";
	FinSi
	
FinProceso
