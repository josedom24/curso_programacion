Proceso DiasDelMes
	Definir dias Como Entero;
	Dimension dias[12];
	Definir nombre_mes Como Caracter;
	Dimension nombre_mes[12];
	Definir mes como Entero;
	dias[0]<-31;
	dias[1]<-28;
	dias[2]<-31;
	dias[3]<-30;
	dias[4]<-31;
	dias[5]<-30;
	dias[6]<-31;
	dias[7]<-31;
	dias[8]<-30;
	dias[9]<-31;
	dias[10]<-30;
	dias[11]<-31;
	nombre_mes[0]<-"Enero";
	nombre_mes[1]<-"Febrero";
	nombre_mes[2]<-"Marzo";
	nombre_mes[3]<-"Abril";
	nombre_mes[4]<-"Mayo";
	nombre_mes[5]<-"Junio";
	nombre_mes[6]<-"Julio";
	nombre_mes[7]<-"Agosto";
	nombre_mes[8]<-"Septiembre";
	nombre_mes[9]<-"Octubre";
	nombre_mes[10]<-"Noviembre";
	nombre_mes[11]<-"Diciembre";
	
	Repetir
		Escribir Sin Saltar "Introduce un mes (1-12):";
		Leer mes;
		Si mes < 1 o mes > 12 Entonces
			Escribir "Error: mes incorrecto.";
		FinSi
	Hasta Que mes>=1 y mes<=12;
	Escribir "El mes de ",nombre_mes[mes-1]," tiene ",dias[mes-1]," días.";
FinProceso
