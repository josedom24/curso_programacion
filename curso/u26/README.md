# Arreglos unidimensionales: Vectores

Un **vector** es una array unidimensional. Para declarar un vector de 10 enteros:

	Definir vector como Entero;
	Dimension vector[10];

Para acceder a cada uno de los elementos del vector utilizamos un índice. el primer elemento se accede con el índice 0. Podemos trabajar individualmente con cada uno de los elementos:

	vector[0]<-10;
	Escribir vector[0];

El acceso a un elemento que no existe producirá un error, por ejemplo:

	vector[10]<-10;

## Recorrido de un vector

Vamos a inicializar todos los elementos de un vector. Para ello vamos a **recorrer** el vector e inicializar cada elemento con un valor ,por ejemplo lo vamos a inicializar a 0. Para recorrer un vector utilizamos un bucle `Para`:

	Para i<-0 hasta 9 Hacer
		array[i]<-0;
	FinPara

Podríamos recorrer el vector para mostrar el valor de los elementos:

	Para i<-0 hasta 9 Hacer
		Escribir array[i];
	FinPara

### Ejemplo

Inicializar un vector de 5 cadenas a partir de los datos pedidos por teclado y posterior mostrarlos en pantalla en mayúsculas.

	Proceso VectorCadenas
		Definir i Como Entero;
		Definir vector Como Caracter;
		Dimension vector[5];
		Para i<-0 hasta 4 Hacer
			Escribir Sin Saltar "Dime la cadena número ",i+1,":";
			Leer vector[i];
		FinPara
		Escribir "Las cadenas en mayúsculas";
		Para i<-0 hasta 4 Hacer
			Escribir Sin Saltar Mayusculas(vector[i])," ";
		FinPara
	FinProceso
