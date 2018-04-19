//################################################################################
//Pide al usuario dos pares de números x1,y2 y x2,y2, que representen dos puntos 
//en el plano. Calcula y muestra la distancia entre ellos.
//################################################################################
//Análisis
//Se piden dos puntos y se calcula la distancia entre ellos. 
//Datos de entrada: dos puntos; cuatro coordenadas (x1,y1) (x2,y2) (entero).
//Información de salida: distancia (real).
//Variables: x1,y1,x2,y2(entero), distancia(real).
//################################################################################
//Diseño
//1. Leer las cuatro coordenadas.
//2. Calcular distancia: raíz cuadrada de (x2-x1)^2 + (y2-y1)^2
//3. Mostrar distancia 
//################################################################################

Proceso CalcularDistanciaEntrePuntos
	Definir x1,x2,y1,y2 como Entero;
	Definir distancia como Real;
	Escribir "Dime las coordenadas del punto 1:";
	Leer x1;
	Leer y1;
	Escribir "Dime las coordenadas del punto 2:";
	Leer x2;
	Leer y2;
	distancia <- raiz((x2-x1)^2 + (y2-y1)^2);
	Escribir "Distancia:", distancia;
FinProceso