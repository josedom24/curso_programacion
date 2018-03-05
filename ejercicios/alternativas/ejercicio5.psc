Proceso Login
	Definir usuario, password como Cadena;
	Escribir Sin Saltar "Introduce el usuario:";
	Leer usuario;
	Escribir Sin Saltar "Introduce el password:";
	Leer password;
	Si usuario="pepe" Y password="asdasd" Entonces
		Escribir "Has entrado al sistema";
	SiNo
		Escribir "Usuario/password incorrecto";
	FinSi
FinProceso
