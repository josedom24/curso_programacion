# Operadores y expresiones

## Expresiones

Una expresión es una combinación de variables, literales, operadores, funciones y expresiones, que tras su evaluación o cálculo nos devuelven un valor de un determinado tipo.

Veamos ejemplos de expresiones:

	a + 7
	(a ^ 2) + b

## Operadores aritméticos

El valor devuelto por una operación aritmética es un número:

* `+`: Suma dos números
* `-`: Resta dos números
* `*`: Multiplica dos números
* `/`: Divide dos números.
* `%` ó `mod`: Módulo o resto de la división
* `^`: Potencia
* `+`, `-`: Operadores unarios positivo y negativo

## Operadores de comparación

El valor devuelto por una operación de comparación es un valor lógico:

* `>`: Mayor que
* `<`: Menor que
* `=`: Igual que
* `<=`: Menor o igual
* `>=`: Mayor o igual
* `<>`: Distinto

La comparación entre cadenas de caracteres se hace según el código ASCII.

## Operadores lógicos

El valor devuelto por una operación lógica es un valor lógico:

* `&` ó `Y`: Conjunción, operación AND.
* `|` ó `O`: Disyunción, operación OR.
* `~` ó `NO`: Negación, operación NOT.

**Tabla de verdad del operador Y**

| a  | b  | a Y b  |
|---|---|--------------|
| V  | V  | V  |
| V  | F  | F  |
| F  | V  | F  |
| F  | F  | F  |

**Tabla de verdad del operador O**

| a  | b  | a O b  |
|---|---|--------------|
| V  | V  | V  |
| V  | F  | V  |
| F  | V  | V  |
| F  | F  | F  |

**Tabla de verdad del operador NO**

| a  | NO a  |
|---|---|
| V  | F  |
| F  | V  |

### Ejercicios de operadores lógicos

Si tenemos 4 variables enteras `a`,`b`,`c` y `d`, expresar los siguientes predicados:

* Los valores de `a` y `b` son ambos menores que 17.
* Los valores de `a`,`b` y `c` son idénticos y distintos de `d`.
* Los valores de `b` y `d` están comprendidos estrictamente entre los valores de `a` y `c`, siendo `a` inferior a `c`.
* Entre los valores de `a`, `b`, y `c` hay al menos dos idénticos

## Precedencia de operadores

La precedencia de operadores es la siguiente:

1. Los paréntesis rompen la precedencia.
2. La potencia 
3. Operadores unarios 
4. Multiplicar, dividir y módulo 
5. Suma y resta 
6. Operador lógico AND 
7. Operadores lógico OR
8. Operadores de comparación
9. Operadores lógicos (not, or, and)
