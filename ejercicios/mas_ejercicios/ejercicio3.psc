//################################################################################
//Funci�n CalcularVuelta: Recibe el dinero que hay que devolver y el valor nominal
// de un billete o una moneda con la que se quiere devolver dicho dinero.
//Devuelve el n�mero m�ximo de billetes o monedas de ese
//valor nominal que no se pase del dinero recibido y actualiza el dinero que
//quedar� pendiente por devolver despu�s de la devoluci�n actual.
//Par�metros de entrada: valor_nominal: valor del billete o la moneda
//Par�metros de entrada y salida : dinero que hay que devolver, se devuelve con el 
//dinero que queda por devolver.
//Dato devuelto: vuelta: N�mero de billetes o monedas que hay que devolver.
//################################################################################

Funcion vuelta <- CalcularVuelta(dinero Por Referencia,valor_nominal)
	Definir vuelta como Entero;
	//Realizamos la divisi�n entera entre el dinero 
	//que hay que devolver y el valor_nominal del billete o moneda
	vuelta<-Trunc(dinero/valor_nominal);
	//Actualizamos el dinero que queda por devolver
	dinero<-dinero - vuelta*valor_nominal;
FinFuncion

//################################################################################
//Procedimiento InicializaBilletesMonedas: Recibe un vector "valores_nominales" donde 
//vamos a guardar el valor de los billetes y monedas de mayor a menor.
//Par�metros de entrada y salida : valores_nominales
//################################################################################

Funcion InicializaBilletesMonedas(valores_nominales Por Referencia)
	valores_nominales[1]<-500;
	valores_nominales[2]<-200;
	valores_nominales[3]<-100;
	valores_nominales[4]<-50;
	valores_nominales[5]<-20;
	valores_nominales[6]<-10;
	valores_nominales[7]<-5;
	valores_nominales[8]<-2;
	valores_nominales[9]<-1;
	valores_nominales[10]<-0.50;
	valores_nominales[11]<-0.20;
	valores_nominales[12]<-0.10;
	valores_nominales[13]<-0.05;
	valores_nominales[14]<-0.02;
	valores_nominales[15]<-0.01;
FinFuncion

//################################################################################
//Procedimiento EscribirVuelta: Recibe el n�mero de billetes o monedas y su valor
//y los imprime por pantalla. Se imprime si hay que devolver de ese billete o moneda
//es decir, si la vuelta>0. Si el valor nominal>2 se devuelven billetes (euros), 
//sino se devuelven monedas y si el valor nominal es >=1 se devuelven euros, sino c�ntimos.
//Par�metros de entrada: vuelta: n�mero de billetes o monedas a devolver y
//valor_nominal: valor del billete o moneda
//################################################################################

Funcion EscribirVuelta(vuelta,valor_nominal)
	//Se imprime si hay algo que devolver
	Si vuelta>0 Entonces
		//Si el valor nominal es menor de 2 devolvemos billetes
		Si valor_nominal>2 Entonces
			Escribir vuelta, " billetes de ",valor_nominal," euros.";
		SiNo
			//SiNo devolvemos monedas
			//Si el valor nominal>=1 devolvemos euros
			Si valor_nominal>=1 Entonces
				Escribir vuelta, " monedas de ",valor_nominal," euros.";
			SiNo //Devolvemos c�ntimos (lo multiplicamos por 100)
				Escribir vuelta, " monedas de ",valor_nominal*100," c�ntimos.";
			FinSi
		FinSi
	FinSi
FinFuncion

//################################################################################
//Realizar una aplicaci�n que recoja por teclado la cantidad total a pagar y la 
//cantidad que se ha entregado. La aplicaci�n debe calcular el cambio 
//correspondiente con el menor n�mero de monedas y/o billetes posibles.
//################################################################################

Proceso Devolucion
	Definir dinero,total,entregada Como Real;
	Definir cantidades como Real;
	Definir vuelta,indice como Entero;
	Dimension cantidades[15];
	//Calculamos el dinero a devolver
	Escribir sin saltar "Dinero a pagar:";
	Leer total;
	Escribir sin saltar "Dinero pagado:";
	Leer entregada;
	dinero<-entregada-total;
	//Incializamos las cantidades de billetes o monedas
	InicializaBilletesMonedas(cantidades);
	//Por cada cantidad, calculamos la vuelta e imprimimos lo que hay que devolver
	Para indice<-1 hasta 15 Hacer
		vuelta<- CalcularVuelta(dinero,cantidades[indice]);
		EscribirVuelta(vuelta,cantidades[indice]);
	FinPara
FinProceso
