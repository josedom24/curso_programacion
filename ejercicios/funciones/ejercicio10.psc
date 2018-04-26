//################################################################################
//Función Convertir_A_Segundos: Recibe una cantidad de horas, minutos y segundos 
//y calcula a cuantos segundos corresponde.
//Parámetros de entrada: hora, minutos y segundos
//Dato devuelto: Segundos totales
//################################################################################

Funcion seg <- Convertir_A_Segundos(h,m,s)
	Definir seg Como Entero;
	seg <- h * 3600 + m * 60 + s;
FinFuncion

//################################################################################
//Procedimiento Convertir_A_HMS: Recibe una cantidad de segundos y debe calcular a 
//que hora, minutos y segundos corresponde 
//Parámetros de entrada: segundos
//Parámetros de entrada: hora,minutos y segundos
//################################################################################

Funcion Convertir_A_HMS(seg,h Por Referencia,m Por Referencia,s Por Referencia)
	//Horas = Divisíón entera de los segundos entre 3600
	h <- Trunc(seg/3600);
	//Decremento los segundos que me quedan por convertir
	seg <- seg - h*3600;
	//Minutos = División entera de los segundos entre 60
	m <- Trunc(seg/60);
	//Decremento los segundos que me quedan por convertir
	seg <- seg - m*60;
	//Lo que me quedan corresponden a los segundos
	s <- seg;
FinFuncion
	
//################################################################################
//Escribe un programa principal con un menú donde se pueda elegir la opción de 
//convertir a segundos, convertir a horas,minutos y segundos o salir del programa.
//################################################################################


Proceso ConvertirHoras
	Definir hor,min,seg Como Entero;
	Definir segund como Entero;
	Definir opcion como Entero;
	Repetir
		Escribir "1.- Convertir a segundos";
		Escribir "2.- Convertir a horas, minutos y segundos";
		Escribir "3.- Salir";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir Sin Saltar "Horas:";
				Leer hor;
				Escribir Sin Saltar "Minutos:";
				Leer min;
				Escribir Sin Saltar "Segundos:";
				Leer seg;
				Escribir "Corresponde a ",Convertir_A_Segundos(hor,min,seg)," segundos.";
			2:
				Escribir Sin Saltar "Segundos:";
				Leer segund;
				Convertir_A_HMS(segund,hor,min,seg);
				Escribir "Corresponde a ",hor,":",min,":",seg;
			3:
				
			De Otro Modo:
				Escribir "Opción incorrecta";
		FinSegun
		
	Hasta Que opcion=3;
FinProceso
