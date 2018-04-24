//################################################################################
//Algoritmo que pida dos números 'nota' y 'edad' y un carácter 'sexo' 
//y muestre el mensaje 'ACEPTADA' si la nota es mayor o igual a cinco, 
//la edad es mayor o igual a dieciocho y el sexo es 'F'. 
//En caso de que se cumpla lo mismo, pero el sexo sea 'M', debe imprimir 'POSIBLE'. 
//Si no se cumplen dichas condiciones se debe mostrar 'NO ACEPTADA'.
//################################################################################
// Análisis
// Pedimos por teclado dos números: nota y edad y un carácter sexo.
// Se muestra "ACEPTADA" si nota>=5, edad>=18 y el sexo es femenino.
// Si se cumple las mismas condiciones pero con el sexo masculino -> "POSIBLE"
// en caso contrario se muestra "NO ACEPTADA"
// Datos de entrada: nota, edad (entero) y sexo (cadena)
// Información de salida: Mensaje de información
// Variables: nota, edad (entero) y sexo (cadena)
//################################################################################
// Diseño
// 1. Leer la nota, la edad y el sexo
// 2. si nota>=5, edad>=18 
// 3. si sexo="F" mostrar "ACEPTADA"
// 4. si sexo="M" mostrar "POSIBLE"
// 5. En caso contrario, mostrar "NO ACEPTADA"
//################################################################################

Proceso ComprobarNotaEdadSexo
	Definir nota,edad como Entero;
	Definir sexo como Cadena;
	Escribir Sin Saltar "Introduce la nota:";
	Leer nota;
	Escribir Sin Saltar "Introduce la edad:";
	Leer edad;
	Escribir Sin Saltar "Introduce el sexo (F/M):";
	Leer sexo;
	Si nota>=5 Y edad>=18 Entonces
		Si Mayusculas(sexo)="F" Entonces
			Escribir "Aceptada";
		SiNo
			Si Mayusculas(sexo)="M" Entonces
				Escribir "Posible";
			SiNo
				Escribir "No Aceptada";
			FinSi
		FinSi
	SiNo
		Escribir "No Aceptada";
	FinSi
	
FinProceso