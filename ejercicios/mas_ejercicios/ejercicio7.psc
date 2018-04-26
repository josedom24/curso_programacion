//################################################################################
//Función devolverNumero: Recibe un intervalo (límite inferior y superior) y 
//devuelve el número intermedio como posible número que tiene que acertar.
//Parámetro de entrada: Límite inferior y superior del intervalo.
//Dato devuelto: Número intermedio del intervalo.
//################################################################################

Funcion num <- devolverNumero(liminf,limsup)
	Definir num Como Entero;
	num<-Trunc((liminf+limsup)/2);
FinFuncion

//################################################################################
//Función LeerOpcion: Recibe un intervalo (límite inferior y superior) y el número 
//que ha propuesto como solución y devuelve la opción escogida:
//'S', si es correcto.
//'A', si es más alto que el número a adivinar.
//'B', si es más bajo. Al finalizar el programa, se deberá escribir el número de 
//intentos realizados para acertar el número.
//Si la opción es A, se modifica el límite inferior con el número propuesto.
//Si la opción es B, se modifica el límite superior con el número propuesto.
//Parámetro de entrada: Número propuesto
//Parámetro de entrada y salida: Límite inferior y superior del intervalo.
//Dato devuelto: Opción escogida
//################################################################################

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

//################################################################################
//Diseñar un programa que permita adivinar al ordenador un determinado número
//entero y positivo para lo cual se deben leer los límites en los que está 
//comprendido dicho número.
//################################################################################						

Proceso AdivinarNumero
	Definir limite_inferior, limite_superior, minumero Como Entero;
	Definir opcion como Caracter;
	Definir intentos Como Entero;
	intentos<-0;
	Escribir "Piensa un número...";
	//Se pide el primer intervalo
	Escribir "Necesito saber el intervalo donde se encuentra el número:";
	Escribir Sin Saltar "Límite inferior:"; 
	Leer limite_inferior;
	Escribir Sin Saltar "Límite superior:"; 
	Leer limite_superior;
	//Se va repitiendo hasta que se acierte el número
	Repetir
		//Escribimos el número propuesto (qué sera el número intermedio del intervalo)
		minumero<-devolverNumero(limite_inferior,limite_superior);
		Escribir "¿Has pensando en el número?:", minumero;
		//Incrementamos el número de intentos
		intentos<-intentos+1;
		//Leemos la opción, si no ha acertado se modifica algunos de los límites y se vuelve a proponer un nuevo número
		opcion<-LeerOpcion(minumero,limite_inferior,limite_superior);
	Hasta Que Mayusculas(opcion)="S";
	//Se escribe los intentos que ha necesitado para acertarlo
	Escribir "Lo he acertado en ",intentos," intentos.";
FinProceso
