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