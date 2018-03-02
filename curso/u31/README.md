# Funciones recursivas

Una función recursiva es aquella que al ejecutarse hace llamadas a ella misma. Por lo tanto tenemos que tener "un caso base" que hace terminar el bucle de llamadas. Veamos un ejemplo:

	Funcion fact <- CalcularFactorial(num)
		Definir fact Como Entero;
		Si num=0 O num=1 Entonces
			fact <- 1;
		SiNo
			fact <- num * CalcularFactorial(num-1);
		FinSi
	FinFuncion	

	Proceso ProgramaPrincipal
		Escribir "El factorial de 6 es ",CalcularFactorial(6);
	FinProceso
