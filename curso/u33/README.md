# Ejercicios de funciones

### Ejercicio 1

Crea un procedimiento EscribirCentrado, que reciba como parámetro un texto y lo escriba centrado en pantalla (suponiendo una anchura de 80 columnas; pista: deberás escribir 40 - longitud/2 espacios antes del texto). Además subraya el mansaje utilizando el carácter `=`.

### Ejercicio 2

Crea un programa que pida dos número enteros al usuario y diga si alguno de ellos es múltiplo del otro. Crea una función EsMultiplo que reciba los dos números, y devuelve si el primero es múltiplo del segundo.

### Ejercicio 3

Crear una función que calcule la temperatura media de un día a partir de la temperatura máxima y mínima. Crear un programa principal, que utilizando la función anterior, vaya pidiendo la temperatura máxima y mínima de cada día y vaya mostrando la media. El programa pedirá el número de días que se van a introducir.

### Ejercicio 4

Crea un función "ConvertirEspaciado", que reciba como parámetro un texto y devuelve una cadena con un espacio adicional tras cada letra. Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use dicha función.

### Ejercicio 5

Crea una función "calcularMaxMin" que recibe una arreglo con valores númerico y devuelve el valor máximo y el mínimo. Crea un programa que pida números por teclado y muestre el máximo y el mínimo, utilizando la función anterior.

### Ejercicio 6

Diseñar una función que calcule el área y el perímetro de una circunferencia. Utiliza dicha función en un programa principal que lea el radio de una circunferencia y muestre su área y perímetro.

### Ejercicio 7

Crear una subrutina llamada "Login", que recibe un nombre de usuario y una contraseña y te devuelve Verdadero si el nombre de usuario es "usuario1" y la contraseña es "asdasd". Además recibe el número de intentos que se ha intentado hacer login y si no se ha podido hacer login incremente este valor.

Crear un programa principal donde se pida un nombre de usuario y una contrseña y se intente hacer login, solamente tenemos tres oportuniaddes para intentarlo.

### Ejercicio 8

Crear una función recursiva que permita calcular el factorial de un número. realiza un programa principal donde se lea un entero y se muestre el resultado del factorial.

### Ejercicio 9

Crear una función que calcule el MCD de dos número por el método de Euclides. El método de Euclide es el siguiente:

* Se divide el número mayor entre el menor.
* Si la división es exacta, el divisor es el MCD.
* Si la división no es exacta, dividimos el divisor entre el resto obtenido y se continúa de esta forma hasta obtener una división exacta, siendo el último divisor el MCD.

crea un programa principal que lea dos números enteros y muestre el MCD.

### Ejercicio 10

Escribir dos funciones que permitan calcular:

* La cantidad de segundos en un tiempo dado en horas, minutos y segundos.
* La cantidad de horas, minutos y segundos de un tiempo dado en segundos.

Escribe un programa principal con un menú donde se pueda elegir la opción de convertir a segundos, convertir a horas,minutos y segundos o salir del programa.

### Ejercicio 11

El día juliano correspondiente a una fecha es un número entero que indica los días que han transcurrido desde el 1 de enero del año indicado. Queremos crear un programa principal que al introducir una fecha nos diga el día julianao que corresponde. Para ello podemos hacer las siguientes subrutinas:

* `LeerFecha`: Nos permite leer por teclado una fecha (día, mes y año).
* `DiasDelMes`: Recibe un mes y un año y nos dice los días de ese mes en ese año.
* `EsBisiesto`: Recibe un año y nos dice si es bisiesto.
* `Calcular_Dia_Juliano`: recibe una fecha y nos devuelve el día juliano.


### Ejercicio 12

vamos a mejorar el ejercicio anterior haciendo una función para validar la fecha. De tal forma que al leer una fecha se asegura que es válida.

### Ejercicio 13

Queremos crear un programa que trabaje con fracciones a/b. Para representar una fracción vamos a utilizar dos enteros: `numerador` y `deniminador`.

Vamos a crear las siguientes funciones para trabajar con funciones:

* `Leer_fracción`: La tarea de esta función es leer por teclado el numerador y el denominador. Cuando leas una fracción debes simplificarla.
* `Escribir_fracción`: Esta función escribe en pantalla la fracción. Si el dominador es 1, se muestra sólo el numerador.
* `Calcular_mcd`:  Esta función recibe dos número y devuelve el máximo común divisor.
* `Simplificar_fracción`: Esta función simplifica la fracción, para ello hay que dividir numerador y dominador por el mcd del numerador y denominador. 
* `Sumar_fracciones`: Función que recibe dos funciones n1/d1 y n2/d2, y calcula la suma de las dos fracciones. La suma de dos fracciones es otra fracción cuyo `numerador=n1*d2+d1*n2` y `denominador=d1*d2`. Se debe simplicar la fracción resultado.
* `Restar_fracciones`: Función que resta dos fracciones:  `numerador=n1*d2-d1*n2` y `denominador=d1*d2`. Se debe simplicar la fracción resultado.
* `Multiplicar_fracciones`: Función que recibe dos fracciones y calcula el producto, para ello `numerador=n1*n2` y `denominador=d1*d2`. Se debe simplicar la fracción resultado.
* `Dividir_fracciones`: Función que recibe dos fracciones y calcula el cociente, para ello `numerador=n1*d2` y `denominador=d1*n2`. Se debe simplicar la fracción resultado.

Crear un programa que utilizando las funciones anteriores muestre el siguiente menú:

1. Sumar dos fracciones: En esta opción se piden dos fracciones y se muestra el resultado.
2. Restar dos fracciones: En esta opción se piden dos fracciones y se muestra la resta.
3. Multiplicar dos fracciones: En esta opción se piden dos fracciones y se muestra la producto.
4. Dividir dos fracciones: En esta opción se piden dos fracciones y se muestra la cociente.
5. Salir

### Ejercicio

funciones para trabajar con una cola 

### Ejercicio

funciones para trabajar con una pila




# Ejercicios resueltos

[Ejercicios de funciones](../../ejercicios/funciones)