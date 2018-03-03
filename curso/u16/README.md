# Ejercicios estructura secuencial

### Ejercicio 1

Escribir un programa que pregunte al usuario su nombre, y luego lo salude.

### Ejercicio 2

Calcular el perímetro y área de un rectángulo dada su base y su altura.

### Ejercicio 3

Dados los catetos de un triángulo rectángulo, calcular su hipotenusa.

### Ejercicio 4

Dados dos números, mostrar la suma, resta, división y multiplicación de ambos.

### Ejercicio 5

Escribir un programa que convierta un valor dado en grados Fahrenheit a grados Celsius. Recordar que la fórmula para la conversión es: 

	C = (F-32)*5/9


6. Calcular la media de tres números pedidos por teclado.
7. Realiza un programa que reciba una cantidad de minutos y muestre por pantalla a cuantas horas y minutos corresponde.

	Por ejemplo: 1000 minutos son 16 horas y 40 minutos.
8. Suponga que un individuo desea invertir su capital en un banco y desea saber cuanto dinero ganara después de un mes si el banco paga a razón de 2% mensual.
9. Un vendedor recibe un sueldo base mas un 10% extra por comisión de sus ventas, el vendedor desea saber cuanto dinero obtendrá por concepto de comisiones por las tres ventas que realiza en el mes y el total que recibirá en el mes tomando en cuenta su sueldo base y comisiones.
10. Una tienda ofrece un descuento del 15% sobre el total de la compra y un cliente desea saber cuanto deberá pagar finalmente por su compra.
11. Un alumno desea saber cual será su calificación final en la materia de Algoritmos. Dicha calificación se compone de los siguientes porcentajes:
	* 55% del promedio de sus tres calificaciones parciales.
    * 30% de la calificación del examen final.
    * 15% de la calificación de un trabajo final.


Pide al usuario dos números y muestra la "distancia" entre ellos (el valor absoluto de su diferencia, de modo que el resultado sea siempre positivo).

Pide al usuario dos pares de números x1,y2 y x2,y2, que representen dos puntos en el plano. Calcula y muestra la distancia entre ellos.


Realizar un algoritmos que lea un número y que muestre su raíz cuadrada y su raíz cúbica. PSeInt no tiene ninguna función predefinida que permita calcular la raíz cuadrada, ¿Cómo se puede calcular?

Dado un número de dos cifras, diseñe un algoritmo que permita obtener el número invertido. Ejemplo, si se introduce 23 que muestre 32.


Un alumno desea saber cuál sera su calificación final en una asignatura. dicha calificación se compone de los siguiente porcentajes: 55% del promedio de sus tres practicas calificadas, 30% de la calificación del examen final y 15 % de la calificación de un proyecto final.


Dos vehículos viajan a diferentes velocidades (v1 y v2) y están distanciados por una distancia d. El que está detrás viaja a una velocidad mayor. Se pide hacer un algoritmo para ingresar la distancia entre los dos vehículos (km) y sus respectivas velocidades (km/h) y con esto determinar y mostrar en que tiempo (minutos) alcanzará el vehículo más rápido al otro.

 Un ciclista parte de una ciudad A a las HH horas, MM minutos y SS segundos. El tiempo de viaje hasta llegar a otra ciudad B es de T segundos. Escribir un algoritmo que determine la hora de llegada a la ciudad B.


inicio
  /*Calcular hora de llegada en Horas, Minutos y Segundos del ciclista*/
  /*Leer hora de partida y tiempo de viaje*/
    leer HoraPartida
    leer MinPartida
    leer SegPartida
    leer SegViaje

  /*Calcular hora de llegada*/
  /*Total de segundo en la patida*/
    TotalSegPart = HoraPartida*36000 + MinPartida*60 + SegPartida

  /*Total Segundos a la llegada*/
    TotalSegLleg = TotalSegPart + SegViaje

  /*Hora de llegada en Horas, Minutos y Segundos*/
    HoraLlegada = HoraSegLLegada MOD 24
    HoraLlegada = TotalSegLleg DIV 3600
    MinLlegada = (TotalSegLleg MOD 3600) DIV 60
    SegLlegada = (TotalSegLleg MOD 3600) MOD 60

  /*escribir hora de llegada*/
    escribir HoraLlegada, MinLlegada, SegLlegada
fin


Pedir el nombre y los das apellidos de una persona y mostrar las iniciales.


Escribir un algoritmo para calcular la nota final de un estudiante, considerando que: por cada respuesta correcta 5 puntos, por una incorrecta -1 y por respuestas en blanco 0. Imprime el resultado obtenido por el estudiante.