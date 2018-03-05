Proceso CalcularPotencia
	Definir base, exponente como Entero;
	Escribir "Dime la base:";
	Leer base;
	Escribir "Dime el exponente:";
	Leer exponente;
	Si exponente>0 Entonces
		Escribir "La potencia es ", base ^ exponente;
	SiNo
		Si exponente=0 Entonces
			Escribir "La potencia es 1";
		SiNo
			Escribir "La potencia es ", 1 / (base ^ abs(exponente));
		FinSi
	FinSi
FinProceso
