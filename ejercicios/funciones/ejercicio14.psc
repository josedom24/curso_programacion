Funcion InicializarPila(pila Por Referencia)
	Definir i Como Entero;
	Para i<-0 hasta 9 Hacer
		pila[i]<-"*";
	FinPara
FinFuncion

Funcion size <- LongitudPila(pila)
	Definir size Como Entero;
	size<-0;
	Mientras pila[size]<>"*" Hacer
		size<-size+1;
	FinMientras
FinFuncion

Funcion resultado <- EstaVaciaPila(pila)
	Definir resultado Como Logico;
	Si LongitudPila(pila)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion resultado <- EstaLlenaPila(pila)
	Definir resultado Como Logico;
	Si LongitudPila(pila)=10 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion


Funcion AddPila(cad, pila Por Referencia)
	Si no EstaLlenaPila(pila) Entonces
		pila[LongitudPila(pila)]<-cad;
	SiNo
		Escribir "No se puede añadir elemento. La pila está llena";
	FinSi
FinFuncion

Funcion cad <- SacarDeLaPila(pila Por Referencia)
	Definir cad Como Caracter;
	Si no EstaVaciaPila(pila) Entonces
		cad <- pila[LongitudPila(pila)-1];
		pila[LongitudPila(pila)-1]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La pila está vacia";
		cad<-"";	
	FinSi
FinFuncion


Funcion EscribirPila(pila)
	Definir i Como Entero;
	i<-0;
	Mientras pila[i]<>"*" Hacer
		Escribir Sin Saltar pila[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion
Proceso ProgramaPila
	definir mipila Como Caracter;
	Dimension mipila[10];
	InicializarPila(mipila);
	AddPila("Hola",mipila);
	AddPila("Hola2",mipila);
	EscribirPila(mipila);
	AddPila("Hola3",mipila);
	Escribir SacarDeLaPila(mipila);
	EscribirPila(mipila);
	Escribir SacarDeLaPila(mipila);
	
	
FinProceso
