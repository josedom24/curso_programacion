//################################################################################
//Función calcularTemperaturaMedia: Recibe dos números reales que representan 
//dos temperaturas y devuelve la temperatura media.
//Parámetros de entrada: dos temperaturas (real)
//Dato devuelto: La temperatura media (real)
//################################################################################

Funcion tmedia <- calcularTemperaturaMedia(temp1,temp2)
	Definir tmedia Como Real;
	tmedia<-(temp1+temp2)/2;
FinFuncion

//################################################################################
//Crear una función que calcule la temperatura media de un día a partir de la 
//temperatura máxima y mínima. Crear un programa principal, que utilizando la 
//función anterior, vaya pidiendo la temperatura máxima y mínima de cada día 
//y vaya mostrando la media. El programa pedirá el número de días que se van 
//a introducir.
//################################################################################

Proceso TemperturaMedia
	Definir tmin,tmax Como Real;
	Definir cantidad,indice como Entero;
	Escribir Sin Saltar "¿Cuántas temperaturas vas a calcular?:";
	Leer cantidad;
	Para indice<-1 hasta cantidad Hacer
		Escribir sin saltar "Introduce temperatura mínima:";
		Leer tmin;
		Escribir sin saltar "Introduce temperatura máxima:";
		Leer tmax;
		Escribir "Temperatura media: ",calcularTemperaturaMedia(tmin,tmax);
	FinPara
FinProceso
