Funcion letra <- CalcularLetra(num)
	Definir letra Como Caracter;
	Definir letras Como Caracter;
	letras <- "TRWAGMYFPDXBNJZSQVHLCKE";
	letra <- subcadena(letras,num%23,num%23);
FinFuncion

Funcion esvalido<- ValidarDNI(dni)
	Definir esvalido Como Logico;
	Definir num Como Entero;
	Definir letra como Caracter;
	letra<-subcadena(dni,8,8);
	num<-ConvertirANumero(subcadena(dni,0,7));
	esvalido<-Mayusculas(letra)=CalcularLetra(num);
FinFuncion

Proceso ProgramaDNI
	Definir midni Como Caracter;
	Escribir sin saltar "DNI:";
	Leer midni;
	Mientras no ValidarDNI(midni) o Longitud(midni)<>9 Hacer
		Escribir "Error en el DNI";
		Escribir sin saltar "DNI:";
		Leer midni;
	FinMientras
	Escribir "DNI correcto";
FinProceso
