# Arreglos multidimensionales: Tablas

Una **tabla** en un array bidimensional. La primera dimensión indica el número de filas y el segundo el número de columnas.

	Definir tabla como Entero;
	Dimension tabla [3,4];

Hemos definido una tabla de enteras con 3 filas y 4 columnas, por tanto tenemos 12 elementos.

Para acceder a cada uno de lo elemento tenemos que indicar la fila y la columna en la que se encuentra, siempre empezando por el 0. Por ejemplo para incializar el elemento que esta en la primera fila y la segunda columna sería:

	tabla[0][1] <- 10;

El acceso a un elemento que no existe producirá un error.

## Recorrido de una tabla

Para recorrer todos los elementos de una tabla necesitamos utilizar dos bucles anidados. Normalmente el exterior nos va a permitir recorrer las filas y el interior las columnas. Por ejemplo para inicializar todos los elementos a 0, quedaría:

	Para filas<-0 hasta 2 Hacer
		Para columnas<-0 hasta 3 Hacer
			tabla[filas,columnas]<-0;
		FinPara
	FinPara

De forma similar podríamos recorrer la tabla para mostrar los elementos:

	Para filas<-0 hasta 2 Hacer
		Para columnas<-0 hasta 3 Hacer
			Escribir tabla[filas,columnas];
		FinPara
	FinPara

### Ejemplo

Inicializar una tabla con los números del 1 al 5, sus cuadrados y sus cubos. Por lo tanto tenemos que definir una tabla con 5 filas y 3 columnas. Muestra los datos:

	Proceso CuadradoCubos
		Definir tabla Como Entero;
		Definir filas,columnas Como Entero;
		Dimension tabla[5,3];
		Para filas<-0 hasta 4 Hacer
			tabla[filas,0]<-filas+1;
			tabla[filas,1]<-(filas+1)^2;
			tabla[filas,2]<-(filas+1)^3;
		FinPara
		
		Para filas<-0 hasta 4 Hacer
			Para columnas<-0 hasta 2 Hacer
				Escribir Sin Saltar tabla[filas,columnas]," ";
			FinPara
			Escribir "";
		FinPara
	FinProceso


