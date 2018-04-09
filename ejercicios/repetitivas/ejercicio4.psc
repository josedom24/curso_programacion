Proceso ContarNumerosPositivosNegativosYCeros
	Definir num Como Entero;
	Definir cantidad_num,i Como Entero;
	Definir cont_negativos,cont_positivos,cont_ceros Como Entero;
	cont_negativos <- 0;
	cont_positivos <- 0;
	cont_ceros <- 0;
	Escribir "¿Cuántos números vas a introducir?:";
	Leer cantidad_num;
	Para i<-1 Hasta cantidad_num Hacer
		Escribir "Número ",i,":" ;
		Leer num;
		Si num>0 Entonces
			cont_positivos <- cont_positivos + 1;
		Sino 
			Si num<0 Entonces
				cont_negativos <- cont_negativos + 1;
			SiNo
				cont_ceros <- cont_ceros + 1;
			FinSi
		FinSi
	FinPara
	Escribir "Números positivos:",cont_positivos;
	Escribir "Números negativos:",cont_negativos;
	Escribir "Números igual a 0:",cont_ceros;
FinProceso
