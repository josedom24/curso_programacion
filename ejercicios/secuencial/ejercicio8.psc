//
//Análisis
//El vededo tiene un sueldo base mas una comisión del 10% por cada venta. Hace tres ventas.
//Datos de entrada: sueldo base, las tres ventas (real).
//Información de salida: comisiones y sueldo total (real).
//Variables: sueldo_base, venta1, venta2, venta3, comision(real).
//Diseño
//1. Leer sueldo base
//2. Leer las tres ventas
//3. Calcular las comisiones. Suma del 10 % de cada venta.
//4. Mostrar comisión
//5. Mostrar seldo total: sueldo_base+comision
Proceso CalcularSueldo
	Definir sueldo_base venta1, venta2, venta3, comision como Real;
	Escribir "Dime el sueldo base:";
	Leer sueldo_base;
	Escribir "Dime precio de la venta 1:";
	Leer venta1;
	Escribir "Dime precio de la venta 2:";
	Leer venta2;
	Escribir "Dime precio de la venta 3:";
	Leer venta3;
	comision<-venta1*0.1+venta2*0.2+venta3*0.1;
	Escribir "Comisión por ventas:",comision;
	Escribir "Sueldo total:", sueldo_base+comision;
FinProceso