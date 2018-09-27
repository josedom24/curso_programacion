//################################################################################
//Queremos guardar la temperatura mínima y máxima de 5 días. realiza un programa 
//que de la siguiente información:
// * La temperatura media de cada día
// * Los días con menos temperatura
// * Se lee una temperatura por teclado y se muestran los días cuya temperatura 
//máxima coincide con ella.Si no existe ningún día se muestra un mensaje de 
//información.
//################################################################################
//Análisis
//Recorro la tabla leyendo para cada día la temperatura máxima y mínima.
//Recorro la tabla para mostrar la temperatura media de cada día.
//Recorro la tabla, para calcular la temperatura mínima, y vuelvo a recorrer para 
//mostrar los días con dicha temperatura.
//Por último pido una temperatura y recorro la tabla para mostrar el día cuya 
//temperatura máxima es igual a la temperatura indicada, o un mensaje diciendo que 
//no existe día con dicha temperatura.
// Datos de entrada: Para los cinco días introducimos temperatura máxima y mínima.
//Y al final introducimos una temperatura para buscar los días con temperatura máxima.
// Información de salida: La temperatura media de cada día, los días con temperatura 
//mínima,los días con temperaturas máxima la indicada por teclado o un mensaje 
//informando que no existe días con dicha temperatura máxima.
// Variables: temperatura (tabla de 5 x 2 enteros), existe_temperatura (lógico)
//            indice, cant_dias (entero), temp_max, temp_min (entero)
//################################################################################

Proceso Temperaturas
	Definir temperatura Como Real;
	Dimension temperatura[5,2];
	Definir existe_temperatura Como Logico;
	Definir indice,cant_dias como Entero;
	Definir temp_max, temp_min como Entero;
	cant_dias<-5;
	//Recorrido para rellenar la tabla (5 días con temp mínima y máxima)
	Para indice<-0 Hasta cant_dias-1 Hacer
		Escribir Sin Saltar "Día ",(indice+1),". Temperatura mínima:";
		Leer temperatura[indice,0];
		Escribir Sin Saltar "Día ",(indice+1),". Temperatura máxima:";
		Leer temperatura[indice,1];
	FinPara
	//Mostrar temperatura media
	Escribir "Temperaturas medias";
	Escribir "===================";
	Para indice<-0 Hasta cant_dias-1 Hacer
		Escribir "Día ",(indice+1),". Temperatura media:",(temperatura[indice,0]+temperatura[indice,1])/2;
	FinPara
	//Calcular temperatura mínima más pequeña
	temp_min<-temperatura[0,0];
	Para indice<-0 Hasta cant_dias-1 Hacer
		Si temperatura[indice,0]<temp_min Entonces
			temp_min<-temperatura[indice,0];
		FinSi
	FinPara
	//Mostrar los días con menos temperatura
	Escribir "Días con menos temperatura";
	Escribir "==========================";
	Para indice<-0 Hasta cant_dias-1 Hacer
		Si temperatura[indice,0]=temp_min Entonces
			Escribir "Día ",(indice+1);
		FinSi
	FinPara
	//Días con temperatura máxima
	existe_temperatura<-Falso;
	Escribir "Días con temperatura máxima";
	Escribir "===========================";
	Escribir sin saltar "Introduce una temperatura:";
	Leer temp_max;
	Para indice<-0 Hasta cant_dias-1 Hacer
		Si temperatura[indice,1]=temp_max Entonces
			Escribir "Día ",(indice+1);
			existe_temperatura<-Verdadero;
		FinSi
	FinPara
	Si no existe_temperatura Entonces
		Escribir "No hay ningún día con dicha temperatura.";
	FinSi
FinProceso
