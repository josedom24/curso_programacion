Funcion num <- devolverNumero(liminf,limsup)
	Definir num Como Entero;
	num<-Trunc((liminf+limsup)/2);
FinFuncion

Funcion opcion<-LeerOpcion(num,liminf Por Referencia,limsup Por Referencia)
	Definir opcion Como Caracter;
	Repetir
		Escribir "¿Es correcto?";
		Escribir "S: si es correcto.";
		Escribir "A: si es más alto que el número a adivinar.";
		Escribir "B: si es más bajo.";
		Leer opcion;
	Hasta Que Mayusculas(opcion)="S" o Mayusculas(opcion)="A" o Mayusculas(opcion)="B";
	Si Mayusculas(opcion)="A" Entonces
		liminf<-num;
	FinSi
	Si Mayusculas(opcion)="B" Entonces
		limsup<-num;
	FinSi
FinFuncion

Proceso AdivinarNumero
	Definir limite_inferior, limite_superior, minumero Como Entero;
	Definir opcion como Caracter;
	Definir intentos Como Entero;
	intentos<-0;
	Escribir "Piensa un número...";
	Escribir "Necesito saber el intervalo donde se encuentra el número:";
	Escribir Sin Saltar "Límite inferior:"; 
	Leer limite_inferior;
	Escribir Sin Saltar "Límite superior:"; 
	Leer limite_superior;
	
	Repetir
		minumero<-devolverNumero(limite_inferior,limite_superior);
		Escribir "¿Has pensando en el número?:", minumero;
		intentos<-intentos+1;
		opcion<-LeerOpcion(minumero,limite_inferior,limite_superior);
	Hasta Que Mayusculas(opcion)="S";
	Escribir "Lo he acertado en ",intentos," intentos.";
FinProceso
