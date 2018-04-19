//################################################################################
//El director de una escuela está organizando un viaje de estudios, y requiere 
//determinar cuánto debe cobrar a cada alumno y cuánto debe pagar a la compañía de 
//viajes por el servicio. La forma de cobrar es la siguiente: 
//si son 100 alumnos o más, el costo por cada alumno es de 65 euros; 
//de 50 a 99 alumnos, el costo es de 70 euros, de 30 a 49, de 95 euros, 
//y si son menos de 30, el costo de la renta del autobús es de 4000 euros, 
//sin importar el número de alumnos. 
//Realice un algoritmo que permita determinar el pago a la compañía de autobuses 
//y lo que debe pagar cada alumno por el viaje.
//################################################################################
// Análisis
// El precio final del autobús depende del número de alumnos que participan.
// Si son 100 o más alumnos cada alumno paga 65 euros.
// Si son entre 50 y 99 alumnos, cada alumno paga 70 euros.
// Si son entre 30 y 49 alumnos, cada alumno paga 95.
// El precio del autobús será lo que paga cada alumno * el número de alumnos.
// Si son menor de 30 alumnos, el autobús vale 4000 euros, 
// divido por el número de alumnos sabemos cuanto paga cada uno.
// Datos de entrada: número de alumnos (entero)
// Información de salida: Precio del autobús (entero), precio por alumno (real)
// Variables: num_alumnos (entero), coste_autobus (entero), coste_por_alumno (real)
//################################################################################
// Diseño
// 1. Leer número de alumnos
// 2. Si el número>=100 coste por alumno = 65
// 3. Si el número>=50 y <=99 coste por alumno = 70
// 4. Si el número>=30 y <=49 coste por alumno = 95
// 5. Si el número<30 coste por alumno = 4000 / número de alumnos
// 6. Si el número de alumnos > 0 (valor correcto) calculo 
//    coste_autobus=número alumnos * coste por alumno 
//    y muestro coste_autobus coste por alumnos.
// 7. Si el número de alumno <= 0 mostrar mensaje de error
//################################################################################

Proceso CalcularCosteAutobus
	Definir num_alumnos Como Entero;
	Definir coste_por_alumno como Real;
	Definir coste_autobus como Entero;
	Escribir Sin Saltar "¿Cuántos alumnos participan en la actividad?:";
	Leer num_alumnos;
	Si num_alumnos>=100 Entonces
		coste_por_alumno<-65;
	FinSi
	Si num_alumnos>=50 Y num_alumnos<=99 Entonces
		coste_por_alumno<-70;
	FinSi
	Si num_alumnos>=30 Y num_alumnos<=49 Entonces
		coste_por_alumno<-95;
	FinSi
	Si num_alumnos<30 Y num_alumnos>0 Entonces
		coste_por_alumno<-4000/num_alumnos;
	FinSi
	Si num_alumnos>0 Entonces
		coste_autobus<-num_alumnos*coste_por_alumno;
		Escribir "El coste por alumno es ",coste_por_alumno," euros.";
		Escribir "El coste del autobús es ",coste_autobus," euros.";
	SiNo
		Escribir "El número de alumnos debe ser un valor positivo.";
	FinSi
	
FinProceso
