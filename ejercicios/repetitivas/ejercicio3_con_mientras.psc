//################################################################################
//Algoritmo que pida números hasta que se introduzca un cero. Debe imprimir la suma
// y la media de todos los números introducidos.
//################################################################################
//Análisis
//Vamos pidiendo números hasta introducir un 0.
//Necesitamos un acumulador para ir realizando las sumas intermedias.
//Además necesitamos un contador, para calcular la media (suma/cantidad)
// Datos de entrada: números, un acumulador para sumar y un contador
// Información de salida:La suma y la media
// Variables:num, suma, cont (enteros)
//################################################################################
//Diseño
//1.- Incializo: suma = 0, cont = 0
//2.- Leer num
//3.- Mientras num<>0
//     4.- Acumulo: suma = suma + num
//     5.- Cuento si num<>0: cont=cont+1
//	   6.- Leer num
//7.- Si cont=0 (No hemos introducido ningún número)-> media=0
//8.- SiNo -> media=suma/cont;
//9.- Mostrar suma y media
//################################################################################

Proceso CalcularSumaMedia
	Definir num Como Entero;
	Definir suma,cont como Entero;
	Definir media Como Real;
	suma <- 0;
	cont <-0;
	//Con el mientras si el primer número es 0 no va a entrar en el bucle
	Escribir "Número (0 para salir):";
	Leer num;
	Mientras num<>0 Hacer
		suma <- suma + num;
		cont <- cont + 1;
		Escribir "Número (0 para salir):";
		Leer num;
	FinMientras
	//Si cont=0 no puedo realizar la división
	Si cont>0 Entonces
		media <- suma / cont;
	SiNo
		media <-0;
	FinSi
	
	Escribir "Suma:",suma;
	Escribir "Media:",media;
FinProceso
