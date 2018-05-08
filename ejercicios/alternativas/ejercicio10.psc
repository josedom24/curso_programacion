//################################################################################
//Algoritmo que pida los puntos centrales x1,y1,x2,y2 y los radios r1,r2 de dos 
//circunferencias y las clasifique en uno de estos estados:
//exteriores
//tangentes exteriores
//secantes
//tangentes interiores
//interiores
//concéntricas
//################################################################################
// Análisis
// Pedimos el centro (x1,y1) de una circunferencia y su radio r1, pedimos el 
//centro de otra circunferencia (x2,y2) y su radio r2.
//En la siguiente página podemos aprender la relación entre dos circunferencias.
//http://mimosa.pntic.mec.es/clobo/geoweb/circun3.htm
// Datos de entrada: x1,y1,x3,y2,r1,r2 (real)
// Información de salida: Tipo de relación entre las circunferencias
// Variables: x1,y1,x3,y2,r1,r2 (real), distancia (real)
//################################################################################
// Diseño
// 1.Leer x1,y1,r1
// 2.Leer x2,y2,r2
// 3. Calcular distancia entre los centros
// 4. Si distancia>suma de los radios mostrar "Circunferencias exteriores"
// 5. Si distancia = suma de los radios mostrar "Tangentes exteriores"
// 6. Si distancia < suma de los radios Y distancia> que el valor absoluto de la 
//resta de los radios mostrar "Circunferencias secante"
// 7. Si distancia = que el valor absoluto de la resta de los radios mostrar 
//"Circunferencias tangentes interiores"
// 8. Si distancia >0 y distancia < que el valor absoluto de la resta de los 
//radios mostrar "Circunferencias interiores"
// 9. Si distancia = 0  mostrar "Circunferencias concéntricas"
//################################################################################


Proceso PosicionCircunferencias
	Definir x1,y1,x2,y2,r1,r2 Como Real;
	Definir distancia Como Real;
	Escribir Sin Saltar "Dime coordenada x primera circunferencia:";
	Leer x1;
	Escribir Sin Saltar "Dime coordenada y primera circunferencia:";
	Leer y1;
	Escribir Sin Saltar "Dime radio primera circunferencia:";
	Leer r1;
	Escribir Sin Saltar "Dime coordenada x segunda circunferencia:";
	Leer x2;
	Escribir Sin Saltar "Dime coordenada y segunda circunferencia:";
	Leer y2;
	Escribir Sin Saltar "Dime radio segunda circunferencia:";
	Leer r2;
	
	distancia <- raiz((x2-x1)^2 + (y2-y1)^2);
	// circunferencias exteriores
	//La distancia entre los centros, d, es mayor que la suma de los radios.
	Si distancia> (r1 + r2) Entonces
		Escribir "Circunferencias exteriores";
	FinSi
	// circunferencias tangentes exteriores
	//La distancia entre los centros es igual a la suma de los radios.
	Si distancia = (r1 + r2) Entonces
		Escribir "Circunferencias tangentes exteriores";
	FinSi
	// circunferencias secantes
	//La distancia  es menor que la suma de los radios y mayor que su diferencia.
	Si distancia < (r1 + r2) Y distancia > abs(r1-r2) Entonces
		Escribir "Circunferencias secantes";
	FinSi
	// Circunferencias tangentes interiores
	//La distancia entre los centros es igual a la diferencia entre los radios.
	Si distancia = abs(r1-r2) Entonces
		Escribir "Circunferencias tangentes interiores";
	FinSi
	// Circunferencias interiores
	//La distancia entre los centros es mayor que cero y menor que la diferencia entre los radios. 
	Si distancia>0 Y distancia<abs(r1-r2) Entonces
		Escribir "Circunferencias interiores";
	FinSi
	// Circunferencias concétricas
	// La distancia = 0.
	Si distancia=0 Entonces
		Escribir "Circunferencias concétricas";
	FinSi
FinProceso
