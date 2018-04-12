# Estructuras de datos: Arreglos (array)

## Estructura de datos

Hasta ahora, para hacer referencia a un dato utilizábamos una variable. El problema se plantea cuando tenemos gran cantidad de datos que guardan entre sí una relación. No podemos utilizar una variable para cada dato. 

Para resolver estas dificultades se agrupan los datos en un mismo conjunto, estos conjuntos reciben el nombre de **estructura de datos**.

## Arreglos o arrays

Un array (o arreglo) es una estructura de datos con elementos homogéneos, del mismo tipo, numérico o alfanumérico, reconocidos por un nombre en común. Para referirnos a cada elemento del array usaremos un índice (empezamos a contar por 0).

## Declaración de arrays

Para declarar un array tenemos que ejecutar dos instrucción:

1. En primer lugar debemos declara el tipo de datos de la variable, con `Definir`.
2. Debemos indicar el número de elementos que va a tener el array, para ello utilizamos la instrucción `Dimension`:

		Dimension <identificador> [<maxl>,...,<maxN>];

	Esta instrucción define un arreglo con el nombre indicado en <identificador> y N dimensiones. Los N parámetros indican la cantidad de dimensiones y el valor máximo de cada una de ellas. La cantidad de dimensiones puede ser una o más, y la máxima cantidad de elementos debe ser una expresión numérica positiva.

Por ejemplo definimos un array de una dimensión (también llamado **vector**) de 10 elementos enteros.

	Definir vector como Entero;
	Dimension vector[10];

Otro ejemplo, definir una array de dos dimensiones (también llamado **matriz** o **tabla**) de 3 filas y cuatro columnas de cadenas.

	Definir tabla como Cadenas;
	Dimension tabla[3,4];

Para acceder a un elemento de un array se utiliza un índice. El primer elemento está en la posición 0.

Para asignar un valor a un elemento del vector:
	
	vector[0]<-10;

Para mostrar el primer elemento del vector:

	Escribir vector[0];

Otro ejemplo asignamos y mostramos el segundo elemento de la segunda fila de la tabla:

	tabla[1,1] <- "Hola";
	Escribir tabla[1,1];

