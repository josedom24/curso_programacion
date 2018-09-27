//################################################################################
//Un alumno desea saber cual será su calificación final en la materia de Algoritmos
//Dicha calificación se compone de los siguientes porcentajes:
//* 55% del promedio de sus tres calificaciones parciales.
//* 30% de la calificación del examen final.
//* 15% de la calificación de un trabajo final.
//################################################################################
//Análisis
//Hay que leer las notas parciales, la nota del examen final 
//y la nota del trabajo final. 
//Posteriormente se calculan los porcentajes y se suman.
//Datos de entrada: tres calificaciones parciales, nota examen final, 
//					nota trabajo final (real).
//Información de salida: nota final (real).
//Variables: parcial,parcial2,parcial3,examen, trabajo, nota(real).
//################################################################################
//Diseño
//1. Leer las notas parciales, del examen final y del trabajo.
//2. Calculamos la nota 55% de la media de las notas parciales, 
//   más el 30% de la nota del examen mas 15% de la nota del trabajo.
//3. Mostrar nota final
//################################################################################

Proceso CalcularNota
	Definir parcial1,parcial2,parcial3,examen,trabajo,nota como Real;
	Escribir "Dime la nota del parcial 1:";
	Leer parcial1;
	Escribir "Dime la nota del parcial 2:";
	Leer parcial2;
	Escribir "Dime la nota del parcial 3:";
	Leer parcial3;
	Escribir "Dime la nota del examen:";
	Leer examen;
	Escribir "Dime la nota del trabajo:";
	Leer trabajo;
	nota <- ((parcial1 + parcial2 + parcial3)/3)*0.55 + 0.3*examen + 0.15*trabajo;
	Escribir "Nota final:", nota;
FinProceso