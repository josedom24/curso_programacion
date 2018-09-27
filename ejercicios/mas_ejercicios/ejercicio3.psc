//################################################################################
//Función CalcularVuelta: Recibe el dinero que hay que devolver y el valor de un 
//billete o una moneda, devuelve el número de billetes o monedas de esa cantidad
//que hay que devolver y actualiza el dinero que queda por devolver.
//Parámetros de entrada: cantidad: valor del billete o la moneda
//Parámetros de entrada y salida : dinero que hay que devolver, se devuelve con el 
//dinero que queda por devolver.
//Dato devuelto: vuelta: Número de billetes o monedas que hay que devolver.
//################################################################################

Funcion vuelta <- CalcularVuelta(dinero Por Referencia,cantidad)
	Definir vuelta como Entero;
	//Realizamos la división entera entre el dinero 
	//que hay que devolver y la cantidad del billete o moneda
	vuelta<-Trunc(dinero/cantidad);
	//Actualizamos el dinero que queda por devolver
	dinero<-dinero - vuelta*cantidad;
FinFuncion

//################################################################################
//Procedimiento InicializaBilletesMonedas: Recibe un vector "cantidades" donde 
//vamos a guardar el valor de los billetes y monedas de mayor a menor.
//Parámetros de entrada y salida : cantidades
//################################################################################

Funcion InicializaBilletesMonedas(cantidades Por Referencia)
	cantidades[0]<-500;
	cantidades[1]<-200;
	cantidades[2]<-100;
	cantidades[3]<-50;
	cantidades[4]<-20;
	cantidades[5]<-10;
	cantidades[6]<-5;
	cantidades[7]<-2;
	cantidades[8]<-1;
	cantidades[9]<-0.50;
	cantidades[10]<-0.20;
	cantidades[11]<-0.10;
	cantidades[12]<-0.05;
	cantidades[13]<-0.02;
	cantidades[14]<-0.01;
FinFuncion

//################################################################################
//Procedimiento EscribirVuelta: Recibe la cantidad de billetes o monedas y su valor
//y los imprime por pantalla. Se imprime si hay que devolver de ese billete o moneda
//es decir, si la vuelta>0. Si la cantidad>2 se devuelven billetes (euros), 
//sino se devuelven monedas y si la cantidad es >=1 se devuelven euros, sino céntimos.
//Parámetros de entrada: vuelta: cantidad de billetes o monedas a devolver y
//cantidad: valor del billete o moneda
//################################################################################

Funcion EscribirVuelta(vuelta,cantidad)
	//Se imprime si hay algo que devolver
	Si vuelta>0 Entonces
		//Si la cantidad es menor de 2 devolvemos billetes
		Si cantidad>2 Entonces
			Escribir vuelta, " billetes de ",cantidad," euros.";
		SiNo
			//SiNo devolvemos monedas
			//Si la cantidad>=1 devolvemos euros
			Si cantidad>=1 Entonces
				Escribir vuelta, " monedas de ",cantidad," euros.";
			SiNo //Devolvemos céntimos (lo multiplicamos por 100)
				Escribir vuelta, " monedas de ",cantidad*100," céntimos.";
			FinSi
		FinSi
	FinSi
FinFuncion

//################################################################################
//Realizar una aplicación que recoja por teclado la cantidad total a pagar y la 
//cantidad que se ha entregado. La aplicación debe calcular el cambio 
//correspondiente con el menor número de monedas y/o billetes posibles.
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
	Para indice<-0 hasta 14 Hacer
		vuelta<- CalcularVuelta(dinero,cantidades[indice]);
		EscribirVuelta(vuelta,cantidades[indice]);
	FinPara
FinProceso
