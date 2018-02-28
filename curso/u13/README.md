# Funciones de cadenas de texto

El perfil del pseudocódigo con el que estamos trabajando, al igual que muchos lenguajes de programación, enumeran a partir del 0 el índice de cada carácter en la cadena. de esta manera el primer carácter de la cadena está en la posición 0.

Para trabajar con cadenas de caracteres también tenemos una serie de funciones predeterminadas:

* `longitud(cadena)`: Devuelve la cantidad de caracteres de la `cadena`.
* `mayusculas(cadena)`: Devuelve una copia de la `cadena` con todos sus caracteres en mayúsculas.
* `minusculas(cadena)`:	Devuelve una copia de la `cadena` con todos sus caracteres en minúsculas.
* `subcadena(cadena,pos_ini,pos_fin)`: Devuelve una nueva cadena que consiste en la parte de la `cadena` que va desde la posición `pos_ini` hasta la posición `pos_fin`.
* `concatenar(cadena1,cadena2)`: Devuelve una nueva cadena resulta de unir las cadenas `cadena1` y `cadena2`.
* `convertirANumero(cadena)`: Recibe una cadena de caracteres que contiene un número (caracteres numéricos) y devuelve una variable numérica con el mismo.
* `convertirATexto(numero)`: Recibe un `numero` y devuelve una variable cadena de caracteres de dicho real. 

## Ejemplo

	Proceso Funciones_Cadena
		Definir cad1,cad2 como cadena;
		Definir num como Entero;
		cad1<-"informática";
		Escribir "La longitud de cad1 es ",longitud(cad1);
		Escribir "El primer carácter de cad1 es ", subcadena(cad1,0,0);
		Escribir "El último carácter de cad1 es ", subcadena(cad1,longitud(cad1)-1,longitud(cad1)-1);
		Escribir "La cad1 en mayúsculas es ",mayusculas(cad1);
		cad2<-concatenar(cad1," es muy interesante");
		Escribir cad2;
		num<-ConvertirANumero("10");
		Escribir num;
		Escribir Concatenar("El número es ",ConvertirATexto(num));
		Escribir "El número es ",num;	
	FinProceso

El resultado es:

	La longitud de cad1 es 11
	El primer carácter de cad1 es i
	El último carácter de cad1 es a
	La cad1 en mayúsculas es INFORMÁTICA
	informática es muy interesante
	10
	El número es 10
	El número es 10