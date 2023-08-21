//################################################################################
//Procedimiento LeerSecreto: Inicializamos la palabra secreta (no más de 20 
//caracteres) y el vector de aciertos a Falso.
//Parámetro de entrada y salida: Palabra que hay que adivinar, y aciertos: vector
//de valores lógicos que se inicializan a falso indicando que no se han acertado 
//ninguna letra.
//################################################################################

Funcion LeerSecreto(secreto Por Referencia,aciertos Por Referencia)
	definir i como Entero;
	Repetir
		Escribir "Introduce la palabra a a adivinar:";
		Leer secreto;
		Si Longitud(secreto)>20 Entonces
			Escribir "No puede tener más de 20 caracteres";
		FinSi
	Hasta Que Longitud(secreto)<=20;
	Para i<-0 hasta 19 Hacer
		aciertos[i]<-Falso;
	FinPara
	Borrar Pantalla;
FinFuncion

//################################################################################
//Función NumeroAciertos: Recibe el vector de aciertos y devuelve cuantas letras
//se han acertado (valores Verdadero).
//Parámetro de entrada: aciertos: vector de valores lógicos que indica las letras
//que se han acertado.
//Dato devuelto: Número de letras acertadas
//################################################################################

Funcion num <- NumeroAciertos(aciertos)
	Definir num,i Como Entero;
	num<-0;
	Para i<-0 hasta 19 Hacer
		Si aciertos[i] Entonces
			num<-num+1;
		FinSi
	FinPara
FinFuncion

//################################################################################
//Procedimiento EscribirSecreto: Recibe la palabra secreta (no más de 20 
//y el vector de aciertos. Y muestra por pantalla un carácter o un * según la 
//posición del carácter indique en el vector aciertos que se ha acertado la letra 
//(valor Verdadero)
//Parámetro de entrada: Palabra que hay que adivinar, y aciertos: vector de valores 
//lógicos que indica las letras que se han acertado.
//################################################################################

Funcion EscribirSecreto(secreto,aciertos)
	Definir i como Entero;
	//Recorro la cadena de caracteres
	Para i<-0 hasta Longitud(secreto)-1 Hacer
		//Si la posición del vector aciertos igual a la posición de un carácter
		// es verdadero imprimo el carácter
		Si aciertos[i] Entonces
			Escribir sin saltar Subcadena(secreto,i,i);
		SiNo //Sino imprimo un *
			Escribir sin saltar "*";
		FinSi
	FinPara
	Escribir "";
FinFuncion

//################################################################################
//Función ComprobarSecreto: Recibe un carácter, la cadena a adivinar y el vector 
//de aciertos y devuelve si el carácter está en la cadena. Además si es así cambia
//en el vector aciertos las posiciones donde se encuentra el carácter de Falso a
//Verdadero.
//Parámetro de entrada: un carácter, la cadena y el vector de aciertos
//Dato devuelto: Valor lógico, Verdadero si el carácter está en la cadena, 
//Falso en caso contrario.
//################################################################################

Funcion acierto <- ComprobarSecreto(letra,secreto,aciertos por Referencia)
	Definir i como Entero;
	Definir acierto como Logico;
	acierto<-Falso;
	Para i<-0 hasta Longitud(secreto)-1 Hacer
		Si Subcadena(secreto,i,i)=letra Entonces
			aciertos[i]<-Verdadero;
			acierto<-Verdadero;
		FinSi
	FinPara
	Escribir "";
FinFuncion

//################################################################################
//Procedimiento LeerLetra: Lee un carácter por teclado y lo devuelve. Además 
//devuelve un cadena con las letras que se han leído anteriormente.
//Parámetro de entrada y salida: la letra leída por teclado, y la cadena con todas 
//las letras leídas anteriormente.
//################################################################################

Funcion LeerLetra(letra Por Referencia,letras Por Referencia)
	Repetir
		Escribir Sin Saltar "Introduce una letra:";
		Leer letra;
		Si Longitud(letra)<>1 Entonces
			Escribir "Una sola letra!!!";
		FinSi
	Hasta Que Longitud(letra)=1;
	letras<-Concatenar(letras,Concatenar(letra," "));
FinFuncion

//################################################################################
//Procedimiento MostarAhorcado: Recibe el número de fallos, y según el valor muestra 
//el nivel de "ahorcamiento" que lleva el jugador.
//Parámetro de entrada: Número de fallos
//################################################################################

Funcion MostrarAhorcado(fallos)
	Escribir "";
	Escribir "La horca!!!";
	Escribir "";
	Segun fallos Hacer
		0:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
		1:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "_________";
		2:
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "_________";
		3:
			Escribir "------";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "_________";
		4:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  ";
			Escribir "|  ";
			Escribir "_________";
		5:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|";
			Escribir "|";
			Escribir "_________";
			
		6:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|";
			Escribir "_________";
		7:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|  / ";
			Escribir "_________";
		8:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|  / \";
			Escribir "_________";
	FinSegun
	Escribir "";
FinFuncion

//################################################################################
//Escribe un programa para jugar al ahorcado.
//################################################################################

Proceso Ahorcado
	Definir secreto,letras,letra como Caracter;
	Definir aciertos como Logico;
	Definir num_fallos como Entero;
	Dimension aciertos[20];
	//Letras: cadena donde se van a ir guardando las letras introducidas
	letras<-"";
	num_fallos<-0;
	//Se introduce por teclado la palabra secreta a adivinar
	LeerSecreto(secreto,aciertos);
	//Se repite hasta que el número de aciertos sea igual a la longitud de la palabra o el número de fallos sea 6
	Repetir
		
		Borrar Pantalla;
		//Se escribe la palabra (* las letras no acertadas)
		EscribirSecreto(secreto,aciertos);
		
		//Se muestra el dibujo del ahorcado, se haya acertado o no.
		MostrarAhorcado(num_fallos);
		
		//Se muestran las letras que se han introducido anteriormente
		Escribir "Letras introducidas: ",letras;
		
		//Se lee una letra y se actualiza las letras leídas
		LeerLetra(letra,letras);
		//Si no hemos acertado la letra mostramos mensaje de error e incrementamos número de fallos.
		Si no ComprobarSecreto(letra,secreto,aciertos) Entonces
			num_fallos<-num_fallos+1;
		FinSi
		
	
		
	Hasta Que NumeroAciertos(aciertos)=Longitud(secreto) o num_fallos=8;
	//Podemos salir del bucle por dos razones
	//Si el número de fallos es 6 hemos perdido
	
	
	Si num_fallos=8 Entonces
		Borrar Pantalla;
		EscribirSecreto(secreto,aciertos);
		MostrarAhorcado(num_fallos);
		Escribir "Has perdido!!!";
	SiNo //Hemos ganado!!!!
		Escribir "Has ganado!!!";
	FinSi
FinProceso

