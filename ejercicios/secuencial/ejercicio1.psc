//################################################################################
// Escribir un programa que pregunte al usuario su nombre, y luego lo salude.
//################################################################################
// Análisis
// Tenemos que pedir un nombre por teclado y luego escribir un mensaje de saludo
// Datos de entrada: nombre (Cadena)
// Variables: nombre (Cadena)
//################################################################################
// Diseño
// 1. Leer nombre
// 2. Escribir mensaje de saludo
//################################################################################

Proceso Saludar
	Definir nombre Como Cadena;
	Escribir "Dime tu nombre:";
	Leer nombre;
	Escribir "Hola ",nombre;
FinProceso
