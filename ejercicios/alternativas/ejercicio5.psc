//################################################################################
//Escribe un programa que pida un nombre de usuario y una contraseña 
//y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema", 
//sino se da un error.
//################################################################################
// Análisis
// Pedimos por teclado nombre y contraseña
// si coinciden con las correctas indicamos que se ha entrado en el sistema.
// en caso contrario indicamos que el nombre o la clave son incorrectas
// Datos de entrada: usuario, password (cadena)
// Información de salida: Mensajes de acierto o error.
// Variables: usuario, password (cadena)
//################################################################################
// Diseño
// 1. Leer el usuario
// 2. Leer el password
// 3. Si el usuario es igual a "pepe" y el password es igual a "asdasd" 
//	  escribir "Has entrado en el sistema"
// 4. En caso contrario mostrar el mensaje "Usuario/password incorrecto"
//################################################################################

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
