Funcion num<- max(num1,num2)
	Definir num como Entero;
	Si num1>num2 Entonces
		num<-num1;
	SiNo
		num<-num2;	
	FinSi
FinFuncion

Funcion num<- min(num1,num2)
	Definir num como Entero;
	Si num1<num2 Entonces
		num<-num1;
	SiNo
		num<-num2;	
	FinSi
FinFuncion


Funcion PonerMinas(tablero Por Referencia)
	Definir num_minas,fila,colum,fila2,colum2 como Entero;
	num_minas<-0;
	Mientras num_minas<10 Hacer
		//Me aseguro que no haya ya una mina en la posición que se genera aleatoriamente
		Repetir
			fila<-azar(10);
			colum<-azar(10);
		Hasta Que tablero[fila,colum]=0;
		//Reperesentamos la mina con el número 9
		tablero[fila,colum]<-9;
		//Ahora incremento el número de minas en las casillas vecinas
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

Funcion InicializarTablero(tablero Por Referencia,visible Por Referencia)
	Definir fila,colum como Entero;
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

Funcion DestaparCelda(tablero Por Referencia,visible Por Referencia,fila,colum)
	Definir fila2,colum2 como Entero;
	//Si es una tabla que se puede destapar
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

Funcion EscribirTablero(tablero,visible)
	Definir fila,colum como Entero;
	Definir titfilas,titcolum como Caracter;
	titfilas<-"0123456789";
	titcolum<-"    0 1 2 3 4 5 6 7 8 9";
	
	Escribir titcolum;
	Escribir "";
	Para fila<-0 hasta 9 Hacer
		Escribir sin saltar subcadena(titfilas,fila,fila),"   ";
		Para colum<-0 hasta 9 Hacer
			Si visible[fila,colum] Entonces
				Si tablero[fila,colum]=0 Entonces
					Escribir sin saltar "  ";
				Sino
					Si tablero[fila,colum]=9 Entonces
						Escribir sin saltar "* ";
					SiNo
						Escribir Sin Saltar tablero[fila,colum]," ";
					FinSI
				FinSI
			SiNo
				Escribir sin Saltar "# ";
			FinSI
		FinPara
		Escribir "";
	FinPara
FinFuncion
Proceso Buscaminas
	Definir tablero,fila,colum,resultado como Entero;
	Dimension tablero[10,10];
	Definir visible como Logico;
	Dimension visible[10,10];
	InicializarTablero(tablero,visible);
	Repetir
		EscribirTablero(tablero,visible);
		Repetir
			Escribir Sin Saltar "Indica fila:";
			Leer fila;
		Hasta que fila>=0 y fila<=9;
		Repetir
			Escribir Sin Saltar "Indica columna:";
			Leer colum;
		Hasta que colum>=0 y colum<=9;
		resultado<-ComprobarTablero(tablero,visible,fila,colum);
		Borrar Pantalla;
	Hasta Que resultado=-1 O resultado=90;
	EscribirTablero(tablero,visible);
	Si resultado=-1 Entonces
		Escribir "Has pisado una mina!!!!!";
		Escribir "GAME OVER";
	SiNo
		Escribir "YOU ARE THE PLAYER ONE!!!";
	FinSi
	
FinProceso
