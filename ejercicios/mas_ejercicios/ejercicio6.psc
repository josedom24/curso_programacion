Proceso Romanos
	Definir nu,nd,nc Como Caracter;
	Definir num como Entero;
	Definir centenas,decenas,unidades Como Entero;
	Dimension nu[10], nd[10], nc[10]; // notación para unidades, decenas y centenas
	nu[0]<-''; nu[1]<-'I'; nu[2]<-'II'; nu[3]<-'III'; nu[4]<-'IV'; nu[5]<-'V'; nu[6]<-'VI'; nu[7]<-'VII'; nu[8]<-'VIII'; nu[9]<-'IX';
	nd[0]<-''; nd[1]<-'X'; nd[2]<-'XX'; nd[3]<-'XXX'; nd[4]<-'XL'; nd[5]<-'L'; nd[6]<-'LX'; nd[7]<-'LXX'; nd[8]<-'LXXX'; nd[9]<-'XC';
	nc[0]<-''; nc[1]<-'C'; nc[2]<-'CC'; nc[3]<-'CCC'; nc[4]<-'CD'; nc[5]<-'D'; nc[6]<-'DC'; nc[7]<-'DCC'; nc[8]<-'DCCC'; nc[9]<-'CM';
	// leer el número
	Repetir
		Escribir sin Saltar "Ingrese un número entre 1 y 1000";
		Leer num;
	Hasta Que num>0 Y num<=1000;
	
	Si num=1000 Entonces
			Escribir "M";
	SiNo
		centenas<-trunc(num/100) % 10;
		decenas<-trunc(num/10) % 10;
		unidades<-num % 10;
		Escribir nc[centenas],nd[decenas],nu[unidades];
	FinSi	
FinProceso
