Proceso Temperatuas
	Definir temperatura Como Real;
	Dimension temperatura[5,2];
	Definir existe_temperatura Como Logico;
	Definir indice como Entero;
	Definir temp, temp_min como Real;
	Para indice<-0 Hasta 4 Hacer
		Escribir Sin Saltar "Día ",(indice+1),". Temperatura mínima:";
		Leer temperatura[indice,0];
		Escribir Sin Saltar "Día ",(indice+1),". Temperatura máxima:";
		Leer temperatura[indice,1];
	FinPara
	//Mostrar temperatura media
	Escribir "Temperaturas medias";
	Escribir "===================";
	Para indice<-0 Hasta 4 Hacer
		Escribir "Día ",(indice+1),". Temperatura media:",(temperatura[indice,0]+temperatura[indice,1])/2;
	FinPara
	//Calcular temperatura mínima más pequeña
	temp_min<-temperatura[0,0];
	Para indice<-0 Hasta 4 Hacer
		Si temperatura[indice,0]<temp_min Entonces
			temp_min<-temperatura[indice,0];
		FinSi
	FinPara
	//Mostrar los días con menos temperatura
	Escribir "Días con menos temperatura";
	Escribir "==========================";
	Para indice<-0 Hasta 4 Hacer
		Si temperatura[indice,0]=temp_min Entonces
			Escribir "Día ",(indice+1);
		FinSi
	FinPara
	//Días con temperatura máxima
	existe_temperatura<-Falso;
	Escribir "Días con temperatura máxima";
	Escribir "===========================";
	Escribir sin saltar "Introduce una temperatura:";
	Leer temp;
	Para indice<-0 Hasta 4 Hacer
		Si temperatura[indice,1]=temp Entonces
			Escribir "Día ",(indice+1);
			existe_temperatura<-Verdadero;
		FinSi
	FinPara
	Si no existe_temperatura Entonces
		Escribir "No hay ningún dia con dicha temperatura.";
	FinSi
	
	
FinProceso
