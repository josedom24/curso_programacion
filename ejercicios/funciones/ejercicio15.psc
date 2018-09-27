//################################################################################
//Procedimiento IncializarCola: Recibe un vector (cola) y su tamaño. 
//Recorre el vector e inicializa sus elementos a *. 
//El * representa que el elemento está vacío.
//Parámetros de entrada: Tamaño del vector
//Parámetros de entrada y salida: El vector (cola)
//################################################################################

Funcion InicializarCola(cola Por Referencia,size_cola)
	Definir i Como Entero;
	Para i<-0 hasta size_cola-1 Hacer
		cola[i]<-"*";
	FinPara
FinFuncion

//################################################################################
//Función LongitudCola: Recibe un vector (cola) y su tamaño. 
//Devuelve un contador con los elementos de la cola.
//Recorre el vector mientras no encuentre un * o llegue al final.
//Parámetros de entrada: Tamaño del vector, el vector (cola)
//################################################################################

Funcion size <- LongitudCola(cola,size_cola)
	Definir size Como Entero;
	size<-0;
	Mientras size<size_cola Y cola[size]<>"*" Hacer
		size<-size+1;
	FinMientras
FinFuncion

//################################################################################
//Función EstaVaciaCola: Recibe un vector (cola) y su tamaño. 
//Devuelve un valor lógico indicando si la cola está vacía.
//Está vacía si la longitud es 0.
//Parámetros de entrada: Tamaño del vector, el vector (cola)
//################################################################################

Funcion resultado <- EstaVaciaCola(cola,size_cola)
	Definir resultado Como Logico;
	Si LongitudCola(cola,size_cola)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

//################################################################################
//Función EstaLlenaCola: Recibe un vector (cola) y su tamaño. 
//Devuelve un valor lógico indicando si la cola está llena.
//Está llena si la longitud es igual al tamaño del vector.
//Parámetros de entrada: Tamaño del vector, el vector (cola)
//################################################################################

Funcion resultado <- EstaLlenaCola(cola,size_cola)
	Definir resultado Como Logico;
	Si LongitudCola(cola,size_cola)=size_cola Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

//################################################################################
//Procedimiento AddCola: Recibe un vector (cola), su tamaño y un elemento (cadena)
//Si no esta llena, añade el elemento en la siguiente posición vacía,
//cuyo indice es igual a la Longitud de la cola.
//Si está llena, escribe un mensaje de error.
//Parámetro de entrada:Tamaño del vector y el elemento.
//Parámetros de entrada y salida: El vector (cola)
//################################################################################

Funcion AddCola(cad, cola Por Referencia,size_cola)
	Si no EstaLlenaCola(cola,size_cola) Entonces
		cola[LongitudCola(cola,size_cola)]<-cad;
	SiNo
		Escribir "No se puede añadir elemento. La cola está llena";
	FinSi
FinFuncion

//################################################################################
//Función SacarCola: Recibe un vector (cola), su tamaño y devuelve 
//el elemento que se ha introducido en primer lugar, si no está vacía.
//El índice de ese elemento será el 0. Lo demás elementos se desplazan hacía el 
//primer elemento. Y el último elemento (el de la posición tamaño de la cola - 1)
//se inicializa a *.
//Si está vacía, escribe un mensaje de error.
//Parámetro de entrada:Tamaño del vector y el elemento.
//Parámetros de entrada y salida: El vector (cola)
//Dato devuelto: El elemento 
//################################################################################

Funcion cad <- SacarDeLaCola(cola Por Referencia,size_cola)
	Definir cad Como Caracter;
	definir i Como Entero;
	Si no EstaVaciaCola(cola,size_cola) Entonces
		cad <- cola[0];
		Para i <- 0 hasta size_cola-2 Hacer
			cola[i]<-cola[i+1];
		FinPara
		cola[size_cola-1]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La cola está vacia";
		cad<-"";	
	FinSi
FinFuncion

//################################################################################
//Función EscribirCola: Recibe un vector (cola) y su tamaño. 
//Muestra los elementos del vector hasta que llegue al final o se encuentre un *.
//Parámetros de entrada: Tamaño del vector, el vector (cola)
//################################################################################

Funcion EscribirCola(cola,size_cola)
	Definir i Como Entero;
	i<-0;
	Mientras i<size_cola y cola[i]<>"*" Hacer
		Escribir Sin Saltar cola[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion

//################################################################################
//Realiza un programa principal que nos permita usar funciones para manipular colas.
//################################################################################

Proceso ProgramaCola
	Definir micola Como Caracter;
	Dimension micola[3];
	Definir tam_cola como Entero;
	Definir elem Como Caracter;
	Definir opcion Como Entero;
	tam_cola<-3;
	InicializarCola(micola,tam_cola);
	Repetir
		Escribir "1.- Añadir elemento a la cola";
		Escribir "2.- Sacar elemento de la cola";
		Escribir "3.- Longitud de la cola";
		Escribir "4.- Mostrar cola";
		Escribir "5.- Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Dame la cadena para añadir a la cola:";
				Leer elem;
				AddCola(elem,micola,tam_cola);
			2:
				Escribir SacarDeLaCola(micola,tam_cola);
			3:
				Escribir "Longitud: ",LongitudCola(micola,tam_cola);
			4:
				EscribirCola(micola,tam_cola);
			5:
				
			De Otro Modo:
				Escribir "Opción incorrecta";
		FinSegun
		
	Hasta Que opcion=5;
FinProceso
