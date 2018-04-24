Funcion LeerSecreto(secreto Por Referencia,aciertos Por Referencia)
	definir i como Entero;
	Repetir
		Escribir "Introduce la palabra a a adivinar:";
		Leer secreto;
		Si Longitud(secreto)>20 Entonces
			Escribir "No puede tener m\ufffds de 20 caracters";
		FinSi
	Hasta Que Longitud(secreto)<=20;
	Para i<-0 hasta 19 Hacer
		aciertos[i]<-Falso;
	FinPara
	Borrar Pantalla;
FinFuncion

Funcion num <- NumeroAciertos(aciertos)
	Definir num,i Como Entero;
	num<-0;
	Para i<-0 hasta 19 Hacer
		Si aciertos[i] Entonces
			num<-num+1;
		FinSi
	FinPara
FinFuncion

Funcion EscribirSecreto(secreto,aciertos)
	Definir i como Entero;
	Para i<-0 hasta Longitud(secreto)-1 Hacer
		Si aciertos[i] Entonces
			Escribir sin saltar Subcadena(secreto,i,i);
		SiNo
			Escribir sin saltar "*";
		FinSi
	FinPara
	Escribir "";
FinFuncion

Funcion acierto<- ComprobarSecreto(letra,secreto,aciertos)
	Definir i como Entero;
	Definir acierto como Logico;
	acierto<-Falso;
	Para i<-0 hasta Longitud(secreto)-1 Hacer
		Si Subcadena(secreto,i,i)=letra Entonces
			aciertos[i]<-Verdadero;
			acierto<-Verdadero;
		FinSi
	FinPara
	Escribir "";
FinFuncion


Funcion LeerLetra(letra Por Referencia,letras Por Referencia)
	Repetir
		Escribir Sin Saltar "Introduce una letra:";
		Leer letra;
		Si Longitud(letra)<>1 Entonces
			Escribir "Una sola letra!!!";
		FinSi
	Hasta Que Longitud(letra)=1;
	letras<-Concatenar(letras,Concatenar(letra," "));
FinFuncion

Funcion MostrarAhorcado(fallos)
	Segun fallos Hacer
		1:
			Escribir "_________";
		2:
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "_________";
		3:
			Escribir "------";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "_________";
		4:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  ";
			Escribir "|  ";
			Escribir "_________";
		5:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|";
			Escribir "_________";
			
		6:
			Escribir "------";
			Escribir "|   |";
			Escribir "|   o";
			Escribir "|  /|\";
			Escribir "|  / \";
			Escribir "_________";
	FinSegun
FinFuncion

Proceso Ahorcado
	Definir secreto,letras,letra como Caracter;
	Definir aciertos como Logico;
	Definir num_fallos como Entero;
	Dimension aciertos[20];
	letras<-"";
	num_fallos<-0;
	LeerSecreto(secreto,aciertos);
	Repetir
		EscribirSecreto(secreto,aciertos);
		LeerLetra(letra,letras);
		Si no ComprobarSecreto(letra,secreto,aciertos) Entonces
			Escribir "La letra ",letra," no existe";
			num_fallos<-num_fallos+1;
			MostrarAhorcado(num_fallos);
		FinSi
		Escribir "Letras introducidas: ",letras;
	Hasta Que NumeroAciertos(aciertos)=Longitud(secreto) o num_fallos=6;
	Si num_fallos=6 Entonces
		Escribir "Has perdido!!!";
	SiNo
		Escribir "Has ganado!!!";
	FinSi
FinProceso

