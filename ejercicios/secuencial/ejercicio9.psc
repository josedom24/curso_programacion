//################################################################################
//Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente 
//desea saber cuanto deberá pagar finalmente por su compra.
//################################################################################
//Análisis
//Debemos preguntar cuanto dinero es la compra, calcular el 15% y restarlo al total.
//Datos de entrada: precio (real).
//Información de salida: precio final (real).
//Variables: precio(real).
//################################################################################
//Diseño
//1. Leer el precio
//2. Mostrar precio final: precio - 15% del precio
//################################################################################

Proceso CalcularPrecio
	Definir precio como Real;
	Escribir "Dime el precio:";
	Leer precio;
	Escribir "Precio final:", precio- precio*0.15;
FinProceso