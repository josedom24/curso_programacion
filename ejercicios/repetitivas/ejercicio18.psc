//################################################################################
//Hacer un programa que muestre un cronometro, indicando las horas, minutos y segundos.
//################################################################################
//Análisis
//Necesito realizar 3 bucles anidados: el más interno es que me permite recorrer
//los segundos, el intermedio me permite recorrer los minutos y el más externo
// recorre las horas. 
// Datos de entrada: Nada
// Información de salida: La hora (hora, minutos y segundos)
// Variables: hora,minuto,segundo (entero)
//################################################################################

Proceso Cronometro
	Definir hora,minuto,segundo Como Entero;
	Para hora <- 0 hasta 23 con paso 1 hacer //horas
		Para minuto <- 0 hasta 59 con paso 1 hacer //minutos
			Para segundo <- 0 hasta 59 con paso 1 hacer //segundos
				Limpiar Pantalla;
				Escribir hora,":",minuto,":",segundo; //escribe hora:minutos:segundos (actualizandose a medida que va pasando cada segundo)
				Esperar 1 Segundo;
			finpara 
		finpara
	finpara
FinProceso