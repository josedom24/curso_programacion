//################################################################################
//Función EstaRepetido: Recibe un número y un vector de cuatro números y comprueba
// si el número no está en el vector.
//Parámetro de entrada: Número y vector
//Dato devuelto: Valor lógico: Verdadero si el número está en el vector y falso si no.
//################################################################################

Funcion repetido <- EstaRepetido(num,vector)
	Definir repetido Como Logico;
	Definir indice Como Entero;
	repetido<-Falso;
	Para indice<-0 hasta 3 Hacer
		Si num=vector[indice] Entonces
			repetido<-Verdadero;
		FinSi
	FinPara
FinFuncion

//################################################################################
//Procedimiento GenerarSecuencia: Recibe un vector que se incializa con 4 enteros 
//no repetidos
//Parámetro de entrada y salida: Vector de 4 enteros
//################################################################################

Funcion GenerarSecuencia(vector Por Referencia)
	Definir  indice Como Entero;
	Definir num Como Entero;
	//Se incializa el vector para que se pueda comprobar si tiene algún número repetido
	Para indice<-0 hasta 3 Hacer
		vector[indice] <- -1;
	FinPara
	//Se incializa cada elemento con un número
	Para indice<-0 hasta 3 Hacer
		//Se comprueba que no tenga número repetidos
		Repetir
			num<-Aleatorio(0,9);
		Hasta Que no EstaRepetido(num,vector);
		vector[indice]<-num;
	FinPara
FinFuncion

//################################################################################
//Procedimiento LeerSecuencia: Recibe un vector que se incializa con 4 enteros 
//leidos por teclado por el usuario, asegurando de que no se introduce ninguno 
//repetido.
//Parámetro de entrada y salida: Vector de 4 enteros
//################################################################################

Funcion LeerSecuencia(vector por Referencia)
	Definir  i,num Como Entero;
	Definir repetido como Logico;
	//Se incializa el vector para que se pueda comprobar si tiene algún número repetido
	Para i<-0 hasta 3 Hacer
		vector[i] <- -1;
	FinPara
	//Se incializa cada elemento con un número leido por teclado
	Para i<-0 Hasta 3 Hacer
		Repetir //Se compruba que el número leido no se haya repetido
			Escribir sin Saltar "Número ",i+1,":";
			Leer num;
			repetido<-EstaRepetido(num,vector);
			Si repetido Entonces
				Escribir "No debes indicar números repetidos.";
			FinSi
		Hasta Que no repetido;
		vector[i]<-num;
	FinPara
FinFuncion

//################################################################################
//Procedimiento ComprobarSecuencia: Recibe dos vectores, el secreto y el introducido
//por el usuario y devuelve el número de coincidencias en la misma posiciñon (muertos)
// y las coincidencias en distintas posición (heridos).
//Parámetros de entrada: Dos vectores
//Parámetro de entrada y salida: muestros y heridos
//################################################################################

Funcion ComprobarSecuencia(secreto,usuario,m Por Referencia,h Por Referencia)
	Definir indice_secreto,indice_usuario como Entero;
	//recorro los dos vectores
	Para indice_secreto<-0 Hasta 3 Hacer
		Para indice_usuario<-0 Hasta 3 Hacer
			Si secreto[indice_secreto]=usuario[indice_usuario] Entonces
				//Si el elemnto coincide y además están en la misma psoición, incremento los muertos.
				Si indice_secreto=indice_usuario Entonces
					m<-m+1;
				SiNo
					//Si el elemnto coincide pero no están en la misma psoición, incremento los heridos.
					h<-h+1;
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion

//################################################################################
//Vamos a programar el juego "Mastermind", para ello el programa debe "eligir" un 
//número de cuatro cifras (sin cifras repetidas), que será el código que el jugador 
//debe adivinar en la menor cantidad de intentos posibles. Cada intento consiste en 
//una propuesta de un código posible que escribe el jugador, y una respuesta del 
//programa. Las respuestas le darán pistas al jugador para que pueda deducir el código.
// * Número de "MUERTOS": Es la cantidad de dígitos que están en el número secreto 
//y en la misma posición,
// * Número de "HERIDOS:" Es la cantidad de dígitos que están en el número secreto 
//pero no en la misma posición.
//################################################################################

Proceso MisterMind
	Definir secreto,usuario como Entero;
	Definir muertos,heridos como Entero;
	Dimension secreto[4];
	Dimension usuario[4];
	//Se genera el número secreto a adivinar
	GenerarSecuencia(secreto);
	//Se repeti hasta que se acierte, número de muertos = 4
	Repetir
		//Leemos la secuencia propuesta por el usuario
		LeerSecuencia(usuario);
		muertos<-0;
		heridos<-0;
		//Se comprueba la propuesta
		ComprobarSecuencia(secreto,usuario,muertos,heridos);
		//Y se imprimern los muertos y heridos
		Escribir "MUERTOS: ",muertos," - HERIDOS: ",heridos;
	Hasta Que muertos=4;
FinProceso
