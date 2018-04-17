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
	Definir elem Como Caracter;
	Definir opcion Como Entero;
	InicializarCola(micola);
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
				AddCola(elem,micola);
			2:
				Escribir SacarDeLaCola(micola);
			3:
				Escribir "Longitud: ",LongitudCola(micola);
			4:
				EscribirCola(micola);
			5:
				
			De Otro Modo:
				Escribir "Opción incorrecta";
		FinSegun
		
	Hasta Que opcion=5;
FinProceso
