Proceso CalcularSumaMedia
	Definir num Como Entero;
	Definir suma,cont como Entero;
	Definir media Como Real;
	suma <- 0;
	cont <-0;
	
	Escribir "Número (0 para salir):";
	Leer num;
	Mientras num<>0 Hacer
		suma <- suma + num;
		cont <- cont + 1;
		Escribir "Número (0 para salir):";
		Leer num;
	FinMientras
	Si cont>0 Entonces
		media <- suma / cont;
	SiNo
		media <-0;
	FinSi
	
	Escribir "Suma:",suma;
	Escribir "Media:",media;
FinProceso
