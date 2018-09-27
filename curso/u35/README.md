# Introducción a los lenguajes de programación

## Sistemas Informáticos

![programa](img/programa.png)

Cuando el procesamiento de los datos y la información en un **Sistema de Información** lo realiza un ordenador lo llamamos **Sistema Informático**.

En un Sistema Informático el algoritmo se describe mediante un programa.

* **Programa**: Conjunto ordenado de instrucciones que se dan al ordenador indicándole las operaciones o tareas que ha de realizar para resolver un problema.

Para escribir programas utilizamos **lenguajes de programación**.

## Etapas del desarrollo de programas

* Análisis: Entender el problema.
* Diseño: Creamos el algoritmo: pseudocódigo.
* **Codificación**: Escribir el algoritmo en un lenguaje de programación (**Código fuente**).
* **Ejecución y validación**: Comprobamos que el programa resuelve el problema planteado.

## Lenguajes de programación

Para que un ordenador realice un proceso, se le debe suministrar en primer lugar un algoritmo adecuado, que llamamos **programa**. El procesador debe ser capaz de interpretar el algoritmo, lo que significa:

* Comprender las instrucciones de cada paso.
* Realizar las operaciones correspondientes.

Se pueden clasificar los lenguajes (de forma tradicional) en:

### Lenguaje Máquina

Son aquellos que están escritos en lenguajes que directamente entiende el ordenador, ya que sus instrucciones son cadenas binarias (secuencias de
ceros y unos) que especifican una operación y las posiciones (dirección) de memoria implicadas en la operación. Se denominan instrucciones de máquina o **código máquina**. Características:

* Las instrucciones en lenguaje máquina dependen del hardware del ordenador y por tanto serán diferentes de un ordenador a otro.
* Se puede transferir un programa a memoria sin necesidad de traducción posterior, lo que supone una mayor velocidad de ejecución a cualquier otro lenguaje.
* Dificultad y lentitud en la codificación.
* Conjunto de instrucciones reducido (operaciones muy elementales)

### Lenguaje de bajo nivel (Ensamblador)

Los lenguajes de bajo nivel son más fáciles de  utilizar que  los lenguajes máquina, pero, al igual que ellos, dependen de la máquina en particular.
El lenguaje de bajo nivel por excelencia es el **ensamblador**.

Las instrucciones en lenguaje ensamblador son instrucciones conocidas como mnemónicos. 

Un programa escrito en lenguaje ensamblador no puede ser ejecutado directamente por la máquina, sino que requiere una fase de traducción al lenguaje máquina. El programa original escrito en lenguaje ensamblador se denomina **programa fuente** y el programa traducido en lenguaje máquina se conoce como **programa objeto**, ya directamente entendible por el ordenador.

### Lenguaje de alto nivel

Los lenguajes de alto nivel son los mas utilizados por los programadores. Están diseñados para que las personas escriban y entiendan los programas de un modo mucho más fácil que los lenguajes máquina y ensambladores. Otra razón es que un programa escrito en un lenguaje de alto nivel es independiente de la máquina, o sea, las instrucciones del programa del ordenador no dependen del diseño hardware de un ordenador en particular. Por lo tanto los programas escritos en lenguajes de alto nivel son portables o transportables, lo que significa la posibilidad de poder ser ejecutados con poca o ninguna modificación en diferentes tipos de ordenadores.

Al igual que sucede con los lenguajes ensambladores, los programas fuente tienen que ser traducidos por **programas traductores**, llamados en este caso
compiladores o intérpretes.

Ejemplos de lenguajes de programación de alto nivel:

BASIC, COBOL, PASCAL, C, VISUAL BASIC, JAVA, PYTHON, PERL, GO, PHP, RUBY,...