//################################################################################
// Una compañía de transporte internacional tiene servicio en algunos países de 
// América del Norte, América Central, América del Sur, Europa y Asia.
// El costo por el servicio de transporte se basa en el peso del paquete 
// y la zona a la que va dirigido...
//################################################################################
// Análisis
//  El costo por el servicio de transporte se basa en el peso del paquete (gramos) 
// y la zona a la que va dirigido. 
// Paquetes de más de 5 kg no se transportan.
// Datos de entrada:peso en gramos (entero), zona (entero) del 1 al 5
// Información de salida: Precio del transporte (real)
// Variables: coste (entero), zona (entero)
//################################################################################
// Diseño
// 1. Leer peso
// 2. Si no es correcto >0 y <5000 mostrar mensaje de error
// 3. Si es correcto:
// 4. Leer zona
// 5. Según el valor de la zona calculo el coste del transporte.
// 6. Mostrar el coste de transporte.
//################################################################################

Proceso CosteTransporte
	Definir peso Como Entero;
	Definir zona Como Entero;
	Escribir Sin Saltar "¿Qué peso tiene el paquete (en gramos)?:";
	Leer peso;
	Si peso>0 Y peso<=5000 Entonces
		Escribir "1.- América del Norte";
		Escribir "2.- América Central";
		Escribir "3.- América del Sur";
		Escribir "4.- Europa";
		Escribir "5.- Asia";
		Escribir Sin Saltar "A que zona se reparte (1-5):";
		Leer zona;
		Segun zona Hacer
			1:
				Escribir "Coste: ",peso*24, " euros.";
			2:
				Escribir "Coste: ",peso*20, " euros.";
			3:
				Escribir "Coste: ",peso*21, " euros.";
			4:
				Escribir "Coste: ",peso*10, " euros.";
			5:
				Escribir "Coste: ",peso*18, " euros.";
			De Otro Modo:
				Escribir "Zona incorrecta.";
				
		FinSegun
	SiNo
		Escribir "Peso incorrecto (no podemos transportar paquetes de más de 5Kg).";
	FinSi
		
FinProceso
