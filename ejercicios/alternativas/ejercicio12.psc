Proceso CalcularYearBisiesto
	Definir year Como Entero;
	Escribir Sin Saltar "Introduce el año:";
	Leer year;
	Si (year % 4 = 0 Y NO (year % 100 = 0)) O year % 400 = 0 Entonces
		Escribir "Año bisiesto.";
	SiNo
		Escribir "Año no bisiesto.";
	FinSi
FinProceso
