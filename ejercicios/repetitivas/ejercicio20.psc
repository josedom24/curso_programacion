Proceso Primos
    
    Definir cant_a_mostrar,n,cant_mostrados,i Como Entero;
    Definir es_primo Como Logico;
    Escribir "Ingrese la cantidad de numeros primos a mostrar:";
    Leer cant_a_mostrar;
    
    Escribir "1: 2"; // el primer primo es 2, los otros son todos impares...
    cant_mostrados <- 1;
    n<-3;            // ...a partir de 3
    
    Mientras cant_mostrados<cant_a_mostrar Hacer
        
        es_primo <- Verdadero; // pienso que es primo hasta que encuentre con que dividirlo
        
        Para i<-3 hasta rc(n) con paso 2 Hacer // ya sabemos que es impar
            Si n % i = 0 entonces // si la division da exacta...
                es_primo <- Falso;  // ...ya no es primo
            FinSi
        FinPara
        
        Si es_primo Entonces
            cant_mostrados <- cant_mostrados + 1;
            Escribir cant_mostrados, ": ",n;
        FinSi
        
        n <- n + 2 ;
        
    FinMientras
    
FinProceso
