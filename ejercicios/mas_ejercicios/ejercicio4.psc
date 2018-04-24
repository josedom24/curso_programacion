//################################################################################
//Realizar un algoritmo que permita descomponer un número en sus factores primos.
//################################################################################
//Análisis
//Vamos hacer un proceso iterativo, por el que se lle un número y se comprueba 
//si es primo.
//Si es primo, se imprime y se termina el algoritmo.
//Si no es primo, se calcula el primer divisor, se muestra 
//y se actuliza el número (numero / divisor) y se va a la siguiente iteración.
//################################################################################

Proceso Factorizacion
    Definir num,div como Enteros;
    Definir factorizar,factor_primo como Logicos;
    Escribir "Ingrese el numero: ";
    Leer num;
    Escribir "Factorizacion: ";
    factorizar<-Verdadero;
	//Mientras se pueda seguir factorizando y el número sea mayor que 1
    Mientras factorizar & num>1 hacer
        div<-1; 
		//Supongo que el número es primo, no se puede factorizar
		factor_primo<-Verdadero;
		//Compruebo si es primo
        Mientras div<=rc(num) & factor_primo Hacer
            div <- div+1;
			//Si se puede dividir por un número entre 2 y la raíz cudadrada del número
            Si num % div = 0 Entonces
				//Significa que no es primo
                factor_primo <- Falso;
            FinSi
        FinMientras
		//Si el número es primo, lo imprimo y hemos terminado
        Si factor_primo Entonces
            Escribir num;
            factorizar<-Falso;
        SiNo //Si no es primo, cáculo el nuevo número (num/div)y muestro el divisor
			//Y vuelvo a intentar factorizar
            Escribir div;
            num<-num/div;
            factor_primo<-Verdadero;
		FinSi
    FinMientras
FinProceso
