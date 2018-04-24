//################################################################################
//Escribir un algoritmo para calcular la nota final de un estudiante, considerando que: 
//por cada respuesta correcta 5 puntos, por una incorrecta -1 y por respuestas en 
//blanco 0. Imprime el resultado obtenido por el estudiante.
//################################################################################
//Análisis
//Se piden la cantidad de respuestas correctas, incorrectas. Calculamos la nota 5:
// 5 puntos por respuesta correcta, -1 por incorrecta.
//Datos de entrada:respuesta correctas, incorrectas y en blanco(entero).
//Información de salida: puntos (entero)
//Variables: correctas, incorrectas, puntos (entero)
//################################################################################
//Diseño
//1. Leer preguntas correctas, incorrectas y en blanco
//2. Calcular nota: número de correctas * 5 + número de incorrectas * -1
//3. Mostrar puntos
//################################################################################

Proceso CalcularPuntos
	Definir correctas, incorrectas, puntos como Enteros;
	Escribir Sin Saltar "Dime cantidad de respuestas correctas:";
	Leer correctas;
	Escribir Sin Saltar "Dime cantidad de respuestas incorrectas:";
	Leer incorrectas;
	puntos <- correctas * 5 + incorrectas * (-1);
	Escribir "Puntos: ",puntos;
FinProceso
