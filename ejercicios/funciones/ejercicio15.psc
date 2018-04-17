Funcion InicializarCola(cola Por Referencia)
	Definir i Como Entero;
	Para i<-0 hasta 9 Hacer
		cola[i]<-"*";
	FinPara
FinFuncion
Funcion size <- LongitudCola(cola)
	Definir size Como Entero;
	size<-0;
	Mientras size<10 Y cola[size]<>"*" Hacer
		size<-size+1;
	FinMientras
FinFuncion

Funcion resultado <- EstaVaciaCola(cola)
	Definir resultado Como Logico;
	Si LongitudCola(cola)=0 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion resultado <- EstaLlenaCola(cola)
	Definir resultado Como Logico;
	Si LongitudCola(cola)=10 Entonces
		resultado<-Verdadero;
	SiNo
		resultado<-Falso;
	FinSi
FinFuncion

Funcion AddCola(cad, cola Por Referencia)
	Si no EstaLlenaCola(cola) Entonces
		cola[LongitudCola(cola)]<-cad;
	SiNo
		Escribir "No se puede añadir elemento. La cola está llena";
	FinSi
FinFuncion

Funcion cad <- SacarDeLaCola(cola Por Referencia)
	Definir cad Como Caracter;
	definir i Como Entero;
	Si no EstaVaciaCola(cola) Entonces
		cad <- cola[0];
		Para i <- 0 hasta 8 Hacer
			cola[i]<-cola[i+1];
		FinPara
		cola[9]<-"*";
	SiNo
		Escribir "No se puede sacar elemento. La cola está vacia";
		cad<-"";	
	FinSi
FinFuncion

Funcion EscribirCola(cola)
	Definir i Como Entero;
	i<-0;
	Mientras i<10 y cola[i]<>"*" Hacer
		Escribir Sin Saltar cola[i]," ";
		i<-i+1;
	FinMientras
	Escribir "";
FinFuncion

Proceso ProgramaCola
	Definir micola Como Caracter;
	Dimension micola[10];
	InicializarCola(micola);
	AddCola("Hola",micola);
	AddCola("Hola2",micola);
	EscribirCola(micola);
	AddCola("Hola3",micola);
	Escribir SacarDeLaCola(micola);
	EscribirCola(micola);
	Escribir SacarDeLaCola(micola);
FinProceso
