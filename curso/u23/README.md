# Uso específico de variables: contadores, acumuladores e indicadores

## Contadores

Un contador es una variable entera que la utilizamos para contar cuando ocurre un suceso. Un contador:

* Se **inicializa** a un valor inicial.

		cont <- 0;

* Se **incrementa**, cuando ocurre el suceso que estamos contado se le suma 1.

		cont <- cont + 1;

### Ejemplo

Introducir 5 número y contar los números pares.

	Proceso ContarPares
		Definir var,cont,num como Entero;
		cont<-0;
		Para var<-1 Hasta 5 Hacer
			Escribir Sin Saltar "Dime un número:";
			Leer num;
			Si num % 2 = 0 Entonces
				cont<-cont+1;
			FinSi
		FinPara
		Escribir "Has introducido ",cont," números pares.";
	FinProceso

## Acumuladores

Un acumulador es una variable numérica que permite ir acumulando operaciones. Me permite ir haciendo operaciones parciales. Un acumulador:

* Se **inicializa** a un valor inicial según la operación que se va a acumular: a 0 si es una suma o a 1 si es un producto.
* Se **acumula** un valor intermedio.
		
		acum <- acum + num;

### Ejemplo

Introducir 5 número y sumar los números pares.

	Proceso SumarPares
		Definir var,suma,num como Entero;
		suma<-0;
		Para var<-1 Hasta 5 Hacer
			Escribir Sin Saltar "Dime un número:";
			Leer num;
			Si num % 2 = 0 Entonces
				suma<-suma+num;
			FinSi
		FinPara
		Escribir "La suma de los números pares es ",suma;
	FinProceso

## Indicadores

Un indicador es una variable lógico, que usamos para recordar o indicar algún suceso. Un indicador:

* Se **inicializa** a un valor lógico que indica que el suceso no ha ocurrido.

	indicador <- Falso

* Cuando ocurre el suceso que queremos recordar cambiamos su valor.

	indicador <- Verdadero

### Ejemplo

Introducir 5 número e indicar si se ha introducido algún número par.

	Proceso RecordarPar
		Definir var,num como Entero;
		Definir indicador como Logico;
		indicador <- Falso;
		Para var<-1 Hasta 5 Hacer
			Escribir Sin Saltar "Dime un número:";
			Leer num;
			Si num % 2 = 0 Entonces
				indicador <- Verdadero;
			FinSi
		FinPara
		Si indicador Entonces
			Escribir "Has introducido algún número par";
		SiNo
			Escribir "No has introducido algún número par";
		FinSi
	FinProceso