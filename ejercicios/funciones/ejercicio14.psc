//################################################################################
//Procedimiento IncializarPila: Recibe un vector (pila) y su tamaño. 
//Recorre el vector e incializa sus elementos a *. 
//El * representa que el elemento está vacío.
//Parámetros de entrada: Tamaño del vector
//Parámetros de entrada y salida: El vector (pila)
//################################################################################

Funcion InicializarPila(pila Por Referencia,size_pila)
	Definir i Como Entero;
	Para i<-0 hasta size_pila-1 Hacer
		pila[i]<-"*";
	FinPara
FinFuncion

//################################################################################
//Función LongitudPila: Recibe un vector (pila) y su tamaño. 
//Devuelve un contador con los elementos de la pila.
//Recorre el vector mientras no encuentre un * o llegue al final.
//Parámetros de entrada: Tamaño del vector, el vector (pila)
//################################################################################

Funcion size <- LongitudPila(pila,size_pila)
	Definir size Como Entero;
	size<-0;
	Mientras size<size_pila Y pila[size]<>"*"  Hacer
		size<-size+1;
	FinMientras
FinFuncion

//################################################################################
//Función EstaVaciaPila: Recibe un vector (pila) y su tamaño. 
//Devuelve un valor lógico indicando si la pila está vacía.
//Está vacía si la longitud es 0.
//Parámetros de entrada: Tamaño del vector, el vector (pila)
//################################################################################

Funcion resultado <- EstaVaciaPila(pila,size_pila)
	Definir resultado Como Logico;
	Si LongitudPila(pila,size_pila)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion resultado <- EstaLlenaPila(pila,size_pila)
	Definir resultado Como Logico;
	Si LongitudPila(pila,size_pila)=size_pila Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion


Funcion AddPila(cad, pila Por Referencia,size_pila)
	Si no EstaLlenaPila(pila,size_pila) Entonces
		pila[LongitudPila(pila,size_pila)]<-cad;
	SiNo
		Escribir "No se puede añadir elemento. La pila está llena";
	FinSi
FinFuncion

Funcion cad <- SacarDeLaPila(pila Por Referencia,size_pila)
	Definir cad Como Caracter;
	Si no EstaVaciaPila(pila,size_pila) Entonces
		cad <- pila[LongitudPila(pila,size_pila)-1];
		pila[LongitudPila(pila,size_pila)-1]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La pila está vacia";
		cad<-"";	
	FinSi
FinFuncion


Funcion EscribirPila(pila,size_pila)
	Definir i Como Entero;
	i<-0;
	Mientras i<size_pila y pila[i]<>"*" Hacer
		Escribir Sin Saltar pila[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion

Proceso ProgramaPila
	Definir mipila Como Caracter;
	Dimension mipila[10];
	Definir tam_pila como Entero;
	Definir elem Como Caracter;
	Definir opcion Como Entero;
	tam_pila<-10;
	InicializarPila(mipila,tam_pila);
	Repetir
		Escribir "1.- Añadir elemento a la pila";
		Escribir "2.- Sacar elemento de la pila";
		Escribir "3.- Longitud de la pila";
		Escribir "4.- Mostrar pila";
		Escribir "5.- Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir sin Saltar "Dame la cadena para añadir a la pila:";
				Leer elem;
				AddPila(elem,mipila,tam_pila);
			2:
				Escribir SacarDeLaPila(mipila,tam_pila);
			3:
				Escribir "Longitud: ",LongitudPila(mipila,tam_pila);
			4:
				EscribirPila(mipila,tam_pila);
			5:
				
			De Otro Modo:
				Escribir "Opción incorrecta";
		FinSegun
		
	Hasta Que opcion=5;
FinProceso
