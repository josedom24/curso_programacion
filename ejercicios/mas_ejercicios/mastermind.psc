Funcion repetido <- EstaRepetido(num,vector)
	Definir repetido Como Logico;
	Definir i Como Entero;
	repetido<-Falso;
	Para i<-0 hasta 4 Hacer
		Si num=vector[i] Entonces
			repetido<-Verdadero;
		FinSi
	FinPara
FinFuncion
Funcion GenerarSecuencia(vector Por Referencia)
	Definir  i Como Entero;
	Definir num Como Entero;
	Para i<-0 hasta 4 Hacer
		vector[i] <- -1;
	FinPara
	Para i<-0 hasta 4 Hacer
		Repetir
			num<-Aleatorio(0,9);
		Hasta Que no EstaRepetido(num,vector);
		vector[i]<-num;
	FinPara
FinFuncion

Funcion LeerSecuencia(vector por Referencia)
	Definir  i,num Como Entero;
	Definir repetido como Logico;
	Para i<-0 hasta 4 Hacer
		vector[i] <- -1;
	FinPara
	Para i<-0 Hasta 4 Hacer
		Repetir
			Escribir "Número ",i+1,":";
			Leer num;
			repetido<-EstaRepetido(num,vector);
			Si repetido Entonces
				Escribir "No debes indicar números repetidos.";
			FinSi
		Hasta Que no repetido;
		vector[i]<-num;
	FinPara
FinFuncion

Funcion ComprobarSecuencia(secreto,usuario,m Por Referencia,h Por Referencia)
	Definir i,j como Entero;
	Para i<-0 Hasta 4 Hacer
		Para j<-0 Hasta 4 Hacer
			Si secreto[i]=usuario[j] Entonces
				Si i=j Entonces
					m<-m+1;
				SiNo
					h<-h+1;
				FinSi
			FinSi
		FinPara
	FinPara
FinFuncion

Proceso MisterMind
	Definir secreto,usuario como Entero;
	Definir muertos,heridos como Enteros;
	Dimension secreto[5];
	Dimension usuario[5];
	DEfinir i Como Entero;
	GenerarSecuencia(secreto);
	Repetir
		LeerSecuencia(usuario);
		muertos<-0;
		heridos<-0;
		ComprobarSecuencia(secreto,usuario,muertos,heridos);
		Escribir "MUERTOS: ",muertos," - HERIDOS: ",heridos;
		Escribir heridos;
	Hasta Que muertos=5;
	
	
	
FinProceso
