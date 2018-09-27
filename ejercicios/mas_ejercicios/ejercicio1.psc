//################################################################################
//Realice un programa que pregunte aleatoriamente una multiplicación. El programa 
//debe indicar si la respuesta ha sido correcta o no (en caso que la respuesta sea 
//incorrecta el programa debe indicar cuál es la correcta). El programa preguntará 
//10 multiplicaciones, y al finalizar mostrará el número de aciertos.
//################################################################################
//Análisis
//Hacemos un bucle con 10 iteraciones, en cada iteración se inicializan dos
//números con un valor aleatorio (de 2 a 10). Se calcula la multiplicación.
//Mostramos la multiplicación, y pedimos por teclado el resultado. Si coincide 
//con la multiplicación calculada cuento un acierto, sino escribimos un mensaje
//de error mostrando el resultado correcto. Cuando salimos del bucle mostramos
//el número de aciertos.
//################################################################################

Proceso Multiplicacion	
	Definir num1,num2,resultado,num_usuario como Entero;
	Definir aciertos,indice como Entero;
	aciertos<-0;
	//Bucle de 10 iteraciones
	Para indice<-1 hasta 10 Hacer
		//Genero dos números aleatorios
		num1<-Aleatorio(2,10);
		num2<-Aleatorio(2,10);
		//Calculo la multiplicación
		resultado<-num1*num2;
		//Mostramos la operación de multiplicar y pedimos al usuario que indique el resultado.
		Escribir "Multiplicación ",indice;
		Escribir Sin Saltar num1," * ",num2," = ";
		Leer num_usuario;
		//Si acierta incrementamos el número de aciertos.
		Si num_usuario=resultado Entonces
			aciertos<-aciertos+1;
		SiNo
			//Si no acierta muestro la respuesta correcta.
			Escribir "No has acertado. La respuesta es ",resultado;
		FinSi
	FinPara
	//Mostramos el número de aciertos
	Escribir "Tu nota ha sido: ",aciertos;
FinProceso
