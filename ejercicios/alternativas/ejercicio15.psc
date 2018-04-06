//El director de una escuela está organizando un viaje de estudios, y requiere determinar cuánto debe cobrar a cada alumno 
//y cuánto debe pagar a la compañía de viajes por el servicio. La forma de cobrar es la siguiente: 
//si son 100 alumnos o más, el costo por cada alumno es de 65 euros; de 50 a 99 alumnos, 
//el costo es de 70 euros, de 30 a 49, de 95 euros, 
//y si son menos de 30, el costo de la renta del autobús es de 4000 euros, sin importar el número de alumnos. 
//Realice un algoritmo que permita determinar el pago a la compañía de autobuses y lo que debe pagar cada alumno por el viaje.
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
		Escribir "El coste del autobus es ",coste_autobus," euros.";
	SiNo
		Escribir "El número de alumnos debe ser un valor positivo.";
	FinSi
	
FinProceso
