//################################################################################
//Función EsMultiplo: Recibe dos número e indica si el primero el múltiplo del 
//segundo. Para ello calculo el resto de la división, si es 0 es múltiplo.
//Parámetros de entrada: dos números
//Dato devuelto: múltiplo: Valor lógico verdadero si el primero es múltiplo 
//del segundo, Falso en caso contrario.
//################################################################################

Funcion multiplo <- EsMultiplo(num1,num2)
	Definir multiplo Como Logico;
	Si num1 % num2 = 0 Entonces
		multiplo <- Verdadero;
	SiNo
		multiplo <- Falso;
	FinSi
FinFuncion

//################################################################################
//Crea un programa que pida dos número enteros al usuario y diga si alguno de ellos 
//es múltiplo del otro. Crea una función EsMultiplo que reciba los dos números, 
//y devuelve si el primero es múltiplo del segundo.
//################################################################################

Proceso CalcularMultiplo
	Definir numero1,numero2 Como Entero;
	Escribir Sin Saltar "Número 1:";
	Leer numero1;
	Escribir Sin Saltar "Número 2:";
	Leer numero2;
	Si EsMultiplo(numero1,numero2) Entonces
		Escribir numero1," es múltiplo de ",numero2;
	SiNo
		Escribir numero1," no es múltiplo de ",numero2;
	FinSi
FinProceso