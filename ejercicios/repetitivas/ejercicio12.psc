//################################################################################
//Realizar un algoritmo para determinar cuánto ahorrará una persona en un año, 
//si al final de cada mes deposita cantidades variables de dinero; 
//además, se quiere saber cuánto lleva ahorrado cada mes.
//################################################################################
//Análisis
//se debe calcular cuanto a ahorrado en un año, indicando las cantidades que ahorra
//cada mes. Por lo tanto tendremos que hacer un bucle que se repita 12 veces e ir 
//acumulando dichas cantidades. 
//Se debe mostrar el valor del acumulador en cada iteración (para indicar lo que 
//lleva ahorrado en cada mes.
// Datos de entrada: La cantidad de dinero ahorrado cada mes.
// Información de salida: En cada mes lo que lleva ahorrado.
// Variables: cant_mensaul (real), ahooro_acum (real), mes (entero)
//################################################################################
//Diseño
//1.- Inicializo el acumulador -> ahorro_acum<-0
//2.- Desde el mes 1 hasta el 12
//		3.- Leer cantidad ahorrada en el mes
//		4.- Acumular la cantidad
//		5.- Mostrar el valor acumulado
//################################################################################

Proceso CalcularAhorro
	Definir cant_mensual Como Real;
	Definir ahorro_acum como Real;
	Definir mes Como Entero;
	ahorro_acum<-0;
	Para mes<-1 hasta 12 Hacer
		Escribir "¿Cuánto has ahorrado en el mes ",mes,"?:";
		Leer cant_mensual;
		ahorro_acum <- ahorro_acum + cant_mensual;
		Escribir "En el mes ",mes," llevas ahorrado ",ahorro_acum;
	FinPara
FinProceso
