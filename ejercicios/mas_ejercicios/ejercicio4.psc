Proceso Factorizacion
    Definir num,div como Enteros;
    Definir factorizar,factor_primo como Logicos;
    Escribir "Ingrese el numero: ";
    Leer num;
    Escribir "Factorizacion: ";
    factorizar<-Verdadero;
    Mientras factorizar & num>1 hacer
        div<-1; 
		factor_primo<-Verdadero;
        Mientras div<=rc(num) & factor_primo Hacer
            div <- div+1;
            Si num/div = trunc(num/div) Entonces
                factor_primo <- Falso;
            FinSi
        FinMientras
        Si factor_primo Entonces
            Escribir num;
            factorizar<-Falso;
        SiNo
            Escribir div;
            num<-num/div;
            factor_primo<-Verdadero;
		FinSi
    FinMientras
FinProceso
