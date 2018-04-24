//################################################################################
//Mostrar en pantalla los N primero números primos. Se pide por teclado la cantidad 
//de números primos que queremos mostrar.
//################################################################################
//Análisis
//Tengo que leer la cantidad de números primos que voy a mostrar. La cantidad debe 
//ser positivo. El primer número primo es el 2 (lo muestro) a partir de este son 
//todos impares. Voy probando desde el 3 todos los impares hasta que muestre la 
//cantidad que hemos indicados (necesito un contador).
//Para comprobar si son primos, los voy dividiendo desde 3 hasta la raíz cuadrada
//del número, si es divisible por algún número no es primo (necesito un indicador).
// Datos de entrada: Cantidad de números a mostrar.
// Información de salida: Los números primos indicados.
// Variables: cant_a_mostrar, cant_mostradis, divisor (entero), es_primo(lógico)
//################################################################################
//Diseño
//1.- Leer cantidad de número primos a mostrar, debe ser positivo
//2.- Muestro el primer número primo, el 2.
//3.- Inicializo el contador de número mostrados a 1.
//4.- Inicializo la variable donde guardo el número a probar -> num=3
//4.- Mientras no haya mostrado la cantidad de número indicados
//		5.- Considero que es primo. Inicializo el indicador -> es_primo=Verdadero
//		6.- desde el 3 hasta la raíz cuadrada del número
//			7.- Si es divisible -> Ya no es primo -> es_primo=Falso
//		8.- Si es primo
//			9.- Incremento el contador de números mostrados
//			10.- Escribo el número primo
//		11.- Como son impares, incremento en 2 el número a probar
//################################################################################

Proceso Primos
    Definir cant_a_mostrar,num,cant_mostrados,divisor Como Entero;
    Definir es_primo Como Logico;
    Repetir
		Escribir "Ingrese la cantidad de números primos a mostrar:";
		Leer cant_a_mostrar;
	Hasta que cant_a_mostrar>0;
    
    Escribir "1: 2"; // el primer primo es 2, los otros son todos impares...
    cant_mostrados <- 1;
    num<-3;            // ...a partir de 3
    
    Mientras cant_mostrados<cant_a_mostrar Hacer
        es_primo <- Verdadero; // pienso que es primo hasta que encuentre con que dividirlo
        Para divisor<-3 hasta rc(num) con paso 2 Hacer // ya sabemos que es impar
            Si num % divisor = 0 entonces // si la división da exacta...
                es_primo <- Falso;  // ...ya no es primo
            FinSi
        FinPara
		
        Si es_primo Entonces
            cant_mostrados <- cant_mostrados + 1;
            Escribir cant_mostrados, ": ",num;
        FinSi
		num <- num + 2 ;
    FinMientras
FinProceso
