# Programas traductores

Los traductores transforman programas escritos en un lenguaje de alto nivel en programas escritos en código máquina. Podemos indicar distintos tipos:

## Compiladores

* Convierte un programa escrito en alto nivel (código fuente) a un programa máquina (código ejecutable).
* Para generar el código ejecutable el código no debe tener errores de sintaxis.
* Necesitamos un compilador para cada arquitectura y sistema operativo.
* Los programas ejecutables no son compatibles entre plataformas.
* Una vez generado el programa ejecutable, no es necesario tener el código fuente.
* Ejemplos: C, Pascal,...

## Interpretes

* La traducción y ejecución de código fuente a código máquina se hace línea por línea.
* Los errores de sintaxis aparecen cuando se interpreta la instrucción con error.
* Necesitamos el código fuente para ejecutar el programa.
* Los lenguajes interpretados suelen ser más lentos en su ejecución
* Ejemplos: Python, PHP, ...

## Máquina virtual

* La traducción se hace en dos pasos.
* Primero se compila el código fuente a un código intermedio (bytecode).
* Segundo, este bytecode se interpreta y ejecuta por una "máquina virtual".
* El bytecode es multiplataforma.
* Necesito una "máquina virtual" para cada plataforma.
* No necesito el código fuente.
* Ejemplo: Java, C#, ...
