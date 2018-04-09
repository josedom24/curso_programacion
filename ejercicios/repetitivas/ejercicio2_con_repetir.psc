Proceso CalcularSumaMedia
	Definir num Como Entero;
	Definir suma,cont como Entero;
	Definir media Como Real;
	suma <- 0;
	cont <-0;
	Repetir
		Escribir "Número (0 para salir):";
		Leer num;
		suma <- suma + num;
		cont <- cont + 1;
		
	Hasta que num=0;
	Si cont-1<>0 Entonces
		media <- suma / (cont-1);
	SiNo
		media <- 0;
	FinSi
	Escribir "Suma:",suma;
	Escribir "Media:",media;
FinProceso
