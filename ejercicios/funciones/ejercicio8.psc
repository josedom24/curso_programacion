Funcion fact <- CalcularFactorial(num)
	Definir fact Como Entero;
	Si num=1 Entonces
		fact<-1;
	SiNo
		fact<-num*CalcularFactorial(num-1);
	FinSi
FinFuncion

Proceso Factorial
	Definir numero1 Como Entero;
	Escribir Sin Saltar "Número:";
	Leer numero1;
	Escribir "El factorial es: ",CalcularFactorial(numero1);
FinProceso
