Proceso CalcularHoras
	Definir minutos, res_horas, res_min como Entero;
	Escribir "Dime la cantidad de minutos:";
	Leer minutos;
	res_horas<-trunc(minutos / 60);
	res_min<-minutos % 60;
	Escribir res_horas," horas y ",res_min," minutos.";
FinProceso
