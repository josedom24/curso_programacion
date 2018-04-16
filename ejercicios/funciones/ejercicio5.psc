Funcion CalcularMaxMin(vector,size,max Por Referencia,min Por Referencia)
	Definir i como Entero;
	max<-vector[0];
	min<-vector[0];
	Para i<-0 hasta size-1 Hacer
		Si max<vector[i] Entonces
			max<-vector[i];
		FinSi
		Si min>vector[i] Entonces
			min<-vector[i];
		FinSi
	FinPara
FinFuncion
Proceso MaxMin
	Definir lista Como Entero;
	Dimension lista[10];
	Definir size_lista,i Como Entero;
	Definir vmax,vmin como Entero;
	size_lista<-10;
	Para i<-0 hasta size_lista-1 Hacer
		lista[i]<-Aleatorio(1,100);
	FinPara
	CalcularMaxMin(lista,size_lista,vmax,vmin);
	Escribir "El valor máximo es ",vmax;
	Escribir "El valor mínimo es ",vmin;
FinProceso
