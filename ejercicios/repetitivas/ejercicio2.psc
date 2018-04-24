//################################################################################
// Crea una aplicación que permita adivinar un número. La aplicación genera un 
// número aleatorio del 1 al 100. A continuación va pidiendo números y va 
// respondiendo si el número a adivinar es mayor o menor que el introducido,
// a demás de los intentos que te quedan (tienes 10 intentos para acertarlo). 
// El programa termina cuando se acierta el número (además te dice en cuantos 
//intentos lo has acertado), si se llega al limite de intentos te muestra el 
//número que había generado.
//################################################################################
//Análisis
//Tenemos que generar un número aleatorio (función Aleatorio) del 1 al 100.
//Necesitamos un contador para contar los 10 intentos. Al principio vale 10 y 
// irá decrementando.
// Mientras no acierte el número y me queden intentos:
// Leo un número
// Lo comparo con el número generado (digo si es mayor o menor)
// Pido otro numero
// Puedo terminar el bucle por dos razones: si he adivinado el numero (he ganado)
// y muestro los intentos que he necesitado.
// sino he perdido, he utilizado los 10 intentos y muestro el número generado.
// Datos de entrada: número pedido al usuario.
// Información de salida: Has ganado y los intentos, o has perdido y el número. 
// Variables: num_screto, num_ingresado, intentos (entero)
//################################################################################
//Diseño
// 1.- Genero un numero aleatorio del 1 al 100 (num_secreto)
// 2.- intentos = 10
// 3.- Leer num
// 4.- Mientras num<> num_secreto y intentos>1
// 		5.- Si num_screto>num -> Escribir "Muy bajo"
// 		6.- Si num_screto<num -> Escribir "Muy alto"
//		7.- intentos=intentos-1
//		8.- Escribir intentos
//		9.- Leer num
// 10.- Si num_secreo=num -> Escribir "Has ganado", intentos
// 11.- SiNo -> Escribir "Has perdido, num_secreto

//################################################################################

Proceso Adivina_Numero
    Definir intentos,num_secreto,num_ingresado Como Entero;
    intentos<-10;
    num_secreto <- Aleatorio(1,100);
    
    Escribir "Adivine el numero (de 1 a 100):";
    Leer num_ingresado;
    Mientras num_secreto<>num_ingresado Y intentos>1 Hacer
        Si num_secreto>num_ingresado Entonces
            Escribir "Muy bajo";
        Sino 
            Escribir "Muy alto";
        FinSi
        intentos <- intentos-1;
        Escribir "Le quedan ",intentos," intentos:";
        Leer num_ingresado;
    FinMientras
    
    Si num_secreto=num_ingresado Entonces
        Escribir "Exacto! Usted adivino en ",11-intentos," intentos.";
    Sino
        Escribir "El numero era: ",num_secreto;
    FinSi
    
FinProceso