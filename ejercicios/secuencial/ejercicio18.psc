//################################################################################
//Pedir el nombre y los dos apellidos de una persona y mostrar las iniciales.
//################################################################################
//Análisis
//Hay que pedir el nombre y los apellidos, y mostrar las iniciales. 
//Primer carácter de cada cadena.
//Datos de entrada: nombre y apellidos (cadena)
//Información de salida: Iniciales (cadena)
//Variables: nombre, apellido1, apellido2, inicial (cadena).
//################################################################################
//Diseño
//1. Leer nombre y apellidos
//2. Obtener primer carácter de cada cadena
//3. Concatenar los caracteres
//4. Mostrar iniciales
//################################################################################

Proceso Iniciales
	Definir nombre,apellido1,apellido2,inicial como Cadenas;
	Escribir Sin Saltar "Dime tu nombre:";
	Leer nombre;
	Escribir Sin Saltar "Dime tu primer apellido:";
	Leer apellido1;
	Escribir Sin Saltar "Dime tu segundo apellido:";
	Leer apellido2;
	inicial<-subcadena(nombre,0,0);
	inicial<-concatenar(inicial,subcadena(apellido1,0,0));
	inicial<-concatenar(inicial,subcadena(apellido2,0,0));
	inicial<-Mayusculas(inicial);
	Escribir "Las iniciales son: ",inicial;
FinProceso
