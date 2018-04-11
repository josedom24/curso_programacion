
Proceso Cronometro
	Definir k,i,j Como Entero;
	para k <- 0 hasta 23 con paso 1 hacer //horas
		para i <- 0 hasta 59 con paso 1 hacer //minutos
			para j <- 0 hasta 59 con paso 1 hacer //segundos
				Limpiar Pantalla;                
				escribir k,":",i,":",j; //escribe hora:minutos:segundos (actualizandose a medida que va pasando cada segundo)
				Esperar 1 Segundo;
			finpara 
		finpara
	finpara
FinProceso