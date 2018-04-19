//################################################################################
// La asociación de vinicultores tiene como política fijar un precio inicial 
// al kilo de uva, la cual se clasifica en tipos A y B,  y además en tamaños 1 y 2. 
// Cuando se realiza la venta del producto, ésta es de un solo tipo y tamaño, 
//se requiere determinar cuánto recibirá un productor por la uva que entrega en un 
//embarque, considerando lo siguiente: 
// si es de tipo A, se le cargan 20 céntimos al precio inicial cuando es 
// de tamaño 1; y 30 céntimos si es de tamaño 2. 
// Si es de tipo B, se rebajan 30 céntimos cuando es de tamaño 1, y 50 céntimos 
// cuando es de tamaño 2. 
// Realice un algoritmo para determinar la ganancia obtenida.
//################################################################################
// Análisis
// El precio final de la uva se calcula multiplicando los kilos recogidos 
// por el precio de cada kilo. El precio por kilo se calcula a partir de un precio 
// inicial sumando o restando una cantidad determinada según el tamaño 
// y el tipo de la uva.
// Datos de entrada: tipo,tamaño (carácter), 
//					 precio inicial en céntimos y kilos (entero)
// Información de salida: Precio final en euros (real) o mensaje de error
// Variables: precio_inicial (entero), kilos (entero), tamano (carácter), 
//			  tipo (carácter), precio_final (real)
//################################################################################
// Diseño
// 1.Leer precio_inicial,kilos
// 2. Leer tipo
// 3. Si tipo no es "A" o "B" devolver mensaje de error.
// 4. Leer el tamaño
// 5. Si el tamaño no es "1" o "2" devolver mensaje d error.
// 6. Si tipo es "A" y tamaño es "1" sumo a precio_inical 20 céntimos.
// 7. Si tipo es "A" y tamaño es "2" sumo a precio_inical 30 céntimos.
// 8. Si tipo es "B" y tamaño es "1" resto a precio_inical 20 céntimos.
// 9. Si tipo es "B" y tamaño es "2" resto a precio_inical 30 céntimos.
// 10. El precio_final = precio_inicial * kilos
// 11. Muestro precio final/100 euros
//################################################################################

Proceso PrecioUva
	Definir tipo Como Caracter;
	Definir tamano Como Caracter;
	Definir precio_inicial,precio_final Como Real;
	Definir kilos Como Entero;
	Escribir Sin Saltar "Introduce el precio inicial por kilos de la UVA (centimos):";
	Leer precio_inicial;
	Escribir Sin Saltar "Introduce cuantos kilos has vendido:";
	Leer kilos;
	Escribir Sin Saltar "Introduce el tipo de la UVA (A/B):";
	Leer tipo;
	
	Si Mayusculas(tipo)<>"A" Y Mayusculas(tipo)<>"B" Entonces
		Escribir "Tipo incorrecto";
	SiNo
		Escribir Sin Saltar "Introduce el tamaño de la UVA (1/2):";
		Leer tamano;
		Si tamano<>"1" Y tamano<>"2" Entonces
			Escribir "Tamaño incorrecto";
		SiNo
			Si Mayusculas(tipo)="A" Entonces
				Si tamano="1" Entonces
					precio_inicial<-precio_inicial+20;
				SiNo
					precio_inicial<-precio_inicial+30;
				FinSi
			SiNo
				Si tamano="1" Entonces
					precio_inicial<-precio_inicial-20;
				SiNo
					precio_inicial<-precio_inicial-30;
				FinSi
			FinSi
			precio_final<-precio_inicial * kilos;
			Escribir "La ganancia es ",precio_final/100, " euros.";
			
		FinSi
	FinSi
FinProceso
