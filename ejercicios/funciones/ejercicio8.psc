//################################################################################
//Función CalcularFactorial: Recibe un número si el número=1 devuelve que el 
//factorial es 1, sino acumula el producto del número con el cálculo del factorial 
//del numero-1. Es una función recursiva.
//Parámetros de entrada: número
////Dato devuelto: Factorial del número
//################################################################################

Funcion fact <- CalcularFactorial(num)
	Definir fact Como Entero;
	Si num=1 Entonces
		fact<-1;
	SiNo
		fact<-num*CalcularFactorial(num-1);
	FinSi
FinFuncion

//################################################################################
//Crear una función recursiva que permita calcular el factorial de un número. 
//Realiza un programa principal donde se lea un entero y se muestre el resultado 
//del factorial.
//################################################################################

Proceso Factorial
	Definir numero1 Como Entero;
	Escribir Sin Saltar "Número:";
	Leer numero1;
	Escribir "El factorial es: ",CalcularFactorial(numero1);
FinProceso
