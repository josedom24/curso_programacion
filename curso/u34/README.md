# Más Ejercicios


### Ejercicio 1

Realice un programa que pregunte aleatóriamente una multiplicación. El programa debe indicar si la respuesta ha sido correcta o no (en caso que la respuesta sea incorrecta el programa debe indicar cuál es la correcta). El programa preguntará 10 multiplicaciones,  y al finalizar mostrará el número de aciertos.

### Ejercicio 2

El DNI (Documento Nacional de Identidad) en España está formada por 8 números y una letra. La letra nos sirve para verificar que el número es correcto, por lo tanto la letra se calcula a partir del número. Busca información de cómo se realiza el calculo y crea una función `CalcularLetra` que recibe un número y devuelva la letra que le corresponde.

La función anterior la podemos utiliza para crear una nueva función `ValidarDNI` que recibe un DNI (cadena de caracteres con 8 números y una letra) que valida el DNI, es decir comprueba si la letra del DNI ces igual a la letra calculada a partir del número.

Realiza un programa principal que lea un DNI y valide que es correcto (se debe comprobar también que tiene 9 caracteres).

### Ejercicio 3

Realizar una aplicación que recoja por teclado la cantidad total a pagar y la cantidad que se ha entregado. La aplicación debe calcular el cambio correspondiente con el menor número de monedas y/o billetes posibles.


### Ejercicio 4

Realizar un algoritmo que permita descomponer un número en sus factores primos.

### Ejercicio 5

Vamos a realizar dos funciones: una que nos permita convertir un número entero a binario, y otra que nos permita convertir un numero binario a decimal.

* `ConvertirABinario`: Función que recibe un número entero y devuelve una cadena con la representación del número en binario.
* `ConvertirADecimal`: Función que recibe una cadena con la representación binaria de un número y devuelve el número en decimal.

Crea un programa principal que permita convertir de decimal a binario y de binario a decimal.

### Ejercicio 6

Crear un programa que convierta un número entero (mayor que 1 y menor o igual que 1000) a número romano.

### Ejercicio 7

Diseñar un programa que permita adivinar al ordenador un determinado número entero y positivo para lo cual se deben leer los límites en los que está comprendido dicho número. El programa deberá ir mostrando números que recibirán las siguientes respuestas:
1. 'S', si es correcto.
2. 'A', si es más alto que el número a adivinar.
3. 'B', si es más bajo.
Al finalizar el programa, se deberá escribir el número de intentos realizados para acertar el número.


### Ejercicio 8
Realizar un programa que pida un mes y un año (superior a 1900) y muestre el calendario del mes de esta manera:
	
	 L   M   M   J   V   S   D
	==========================
	     1   2   3   4   5   6
	 7   8   9  10  11  12  13
	14  15  16  17  18  19  20
	21  22  23  24  25  26  27
	28  29  30  31

Para ello es necesario averiguar que día de la semana (Lunes, Martes, ...) corresponde con un fecha determinada. Hay muchas maneras de calcularlo: nosotros vamos a contar los días que han trascurridos desde el año 1900 (podemos hacer uso de funciones que hemos utilizado en ejercicios anteriores), y una vez calculado le hacemos el módulo  7 y el número obtenido será el da de la semana (0: domingo, 1: lunes, ...) (NOTA: ten en cuanta que queremos realizar un calendario que empiece en lunes, no en domingo).

### Ejercicio 9

Vamos a programar el juego "Mastermind", para ello el programa debe "eligir" un número de cuatro cifras (sin cifras repetidas), que será el código que el jugador debe adivinar en la menor cantidad de intentos posibles. Cada intento consiste en una propuesta de un código posible que escribe el jugador, y una respuesta del programa. Las respuestas le darán pistas al jugador para que pueda deducir el código.

* Número de "MUERTOS": Es la cantidad de dígitos que están en el número secreto y en la misma posición,
* Número de "HERIDOS:" Es la cantidad de dígitos que están en el número secreto pero no en la misma posición.

Por ejemplo, si el código que eligió el programa es el 2607, y el jugador propone el 1406, el programa le debe responder un MUERTO (el 0, que está en el código original en el mismo lugar, el tercero), y un HERIDO (el 6, que también está en el código original, pero en la segunda posición, no en el cuarto como fue propuesto). 

### Ejercicio 10

Escribe un programa para jugar al ahorcado.

* Un jugador introduce una palabra secreta y otro jugador tratará de adivinarla.
* Aparecerá la palabra oculta (se mostrará un conjunto de asteriscos con la longitud de la palabra que hay que adivinar).
* El programa te va pidiendo letras.
* Si la letra está en la palabra, se mostrar la palabra mostrando las letras acertadas y los asteriscos en las letras que faltan por averiguar.
* Cada vez que se introduce una letra se muestra las letras que has introducido anteriormente.
* Si la letra no se encuentra en la palabra se suma un fallo. Según el número de fallos se mostrará el dibujo del ahorcado cada vez ms completo. 
* Si introduces todas las letras de la palabra has ganada y te mostrará el número de intentos que has necesitado.
* Si produces 6 fallos, habrás perdido y se mostrará el dibujo del ahorcado completo.

# Ejercicios resueltos

[Más ejercicios](../../ejercicios/mas_ejercicios)
