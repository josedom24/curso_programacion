Funcion binario <- ConvertirABinario(decimal)
	Definir binario como Caracter;
	binario<-"";
	Mientras decimal>1 Hacer
		binario<-Concatenar(ConvertirATexto(decimal % 2),binario);
		decimal <- trunc(decimal / 2);
	FinMientras
	binario<-Concatenar(ConvertirATexto(decimal),binario);
FinFuncion

Funcion decimal <- ConvertirADecimal(binario)
	Definir decimal,i, exponente Como Entero;
	decimal <- 0;
	exponente<-1;
	Para i<-Longitud(binario)-1 hasta 0 con paso -1 Hacer
		Si Subcadena(binario,i,i)="1" Entonces
			decimal<-decimal+ConvertirANumero(Subcadena(binario,i,i))*exponente;
		FinSi
		exponente<-exponente*2;
	FinPara
FinFuncion

Funcion indicador <- EsBinario(binario)
	Definir indicador Como Logico;
	Definir i como Entero;
	indicador<-Verdadero;
	Para i<-0 hasta Longitud(binario)-1 Hacer
		Si Subcadena(binario,i,i)<>"1" Y Subcadena(binario,i,i)<>"0" Entonces
			indicador<-Falso;
		FinSi
	FinPara
FinFuncion

Proceso DecimalBinario
	Definir decimal como Entero;
	Definir binario Como Caracter;
	Escribir Sin Saltar "Dime un número decimal:";
	Leer decimal;
	Escribir "Número binario:",ConvertirABinario(decimal);
	Repetir
		Escribir Sin Saltar "Dime un número en binario:";
		Leer binario;
	Hasta Que EsBinario(binario);
	Escribir "Número decimal:",ConvertirADecimal(binario);
	
FinProceso
