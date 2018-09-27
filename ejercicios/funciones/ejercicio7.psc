//################################################################################
//Función Login: Recibe un nombre de usuario y una contraseña, y devuelve un
//valor lógico: verdadero si se ha introducido el nombre y la contraseña adecuadas.
//Además va incrementa el numero de internos que la recibe como parámetro de 
//entrada/salida
//Parámetros de entrada: nombre y contraseña
//Parámetros de entrada y salida: intentos
//Dato devuelto: Valor lógico indicando si ha hecho login
//################################################################################

Funcion eslogin<-Login(nombre,pass,intentos por referencia)
	Definir eslogin Como Logico;
	Si nombre="usuario1" Y pass="asdasd" Entonces
		eslogin<-Verdadero;
	SiNo
		eslogin<-Falso;
		intentos<-intentos+1;
	FinSi
FinFuncion

//################################################################################
//Crear una subrutina llamada "Login", que recibe un nombre de usuario y una 
//contraseña y te devuelve Verdadero si el nombre de usuario es "usuario1" y la 
//contraseña es "asdasd". Además recibe el número de intentos que se ha intentado 
//hacer login y si no se ha podido hacer login incremente este valor.
//Crear un programa principal donde se pida un nombre de usuario y una contraseña 
//y se intente hacer login, solamente tenemos tres oportunidades para intentarlo.
//################################################################################

Proceso EntrarEnElSistema
	Definir usuario,clave Como Caracter;
	Definir cuantasveces como entero;
	Definir entrar como Logico;
	cuantasveces<-0;
	Repetir
		Escribir Sin Saltar "Usuario:";
		Leer usuario;
		Escribir Sin Saltar "Password:";
		Leer clave;
		//Llamo a la función y le envío el nombre y la contraseña
		//Devuelve verdadero o falso según haya indicado bien los datos
		//Además incrementa la variable "cuantasveces" que es un contador de intentos
		entrar<-Login(usuario,clave,cuantasveces);
		Si no entrar Entonces
			Escribir "Error. Nombre de usuario o contraseña incorrecta.";
		FinSi
	Hasta Que  entrar o cuantasveces=3; //Sale si he hecho login o llego a los tres intentos
	//Puedo llegar a esta instrucción por dos razones
	//Si he hecho login muestro mensaje de bienvenida
	Si entrar Entonces
		Escribir "Bienvenidos al sistema";
	SiNo //He llegado a los tres intentos
		Escribir "No has entrado en el sistema";
	FinSi
FinProceso
