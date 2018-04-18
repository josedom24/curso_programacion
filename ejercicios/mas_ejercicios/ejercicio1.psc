Proceso Multiplicacion	
	Definir num1,num2,resultado,num_usuario como Entero;
	Definir aciertos,i como Entero;
	aciertos<-0;
	Para i<-1 hasta 10 Hacer
		num1<-Aleatorio(2,10);
		num2<-Aleatorio(2,10);
		resultado<-num1*num2;
		Escribir "Multiplicación ",i;
		Escribir Sin Saltar num1," * ",num2," = ";
		Leer num_usuario;
		Si num_usuario=resultado Entonces
			aciertos<-aciertos+1;
		SiNo
			Escribir "No has acertado. La respuesta es ",resultado;
		FinSi
	FinPara
	Escribir "Tu nota ha sido: ",aciertos;
	
	
	
FinProceso
