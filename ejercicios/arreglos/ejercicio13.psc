Proceso CalcularKilometros
	Definir nombre Como Caracter;
	Dimension nombre[10];
	Definir kms Como Entero;
	Dimension kms[10,7];
	Definir total_kms Como Entero;
	Dimension total_kms[10];
	Definir num_conductores,indice_cond,indice_dias como Entero;
	Definir dias Como Caracter;
	Dimension dias[7];
	dias[0]<-"Lunes";
	dias[1]<-"Martes";
	dias[2]<-"Miércoles";
	dias[3]<-"Jueves";
	dias[4]<-"Viernes";
	dias[5]<-"Sábado";
	dias[6]<-"Domingo";
	
	Escribir sin saltar "¿Cuantós conductores tiene la empres?:";
	Leer num_conductores;
	
	Para indice_cond<-0 hasta num_conductores-1 Hacer
		Escribir sin saltar "Nombre del conductor ",indice_cond+1,":";
		Leer nombre[indice_cond];
		Para indice_dias<-0 hasta 6 Hacer
			Escribir sin saltar "¿Cuantós km ha realizado el ",dias[indice_dias],"?:";
			Leer kms[indice_cond,indice_dias];
		FinPara
	FinPara
	
	Para indice_cond<-0 hasta num_conductores-1 Hacer
		total_kms[indice_cond]<-0;
		Para indice_dias<-0 hasta 6 Hacer
			total_kms[indice_cond]<-total_kms[indice_cond]+kms[indice_cond,indice_dias];
		FinPara
	FinPara
		
	Para indice_cond<-0 hasta num_conductores-1 Hacer
		Escribir nombre[indice_cond]," ha realizado ",total_kms[indice_cond]," kms.";
	FinPara
FinProceso
