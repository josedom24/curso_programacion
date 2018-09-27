# Ejecución de programas interpretados con Python

Un Lenguaje interpretado es aquel cuyo código no necesita ser preprocesado mediante un compilador, eso significa que el ordenador es capaz de ejecutar la sucesión de instrucciones dadas por el programador sin necesidad de leer y traducir exhaustivamente todo el código.

Por lo tanto necesitamos el código fuentes para ejecutar el programa utilizando un interprete que tendremos instalado en nuestras distintas plataformas (Linux, Windows, ...)

## Instalación de Python3

Python es un lenguaje interpretado, que está instalado por defecto en la mayoría de las distribuciones Linux. Para instalarlo en Windows puedes seguir las instrucciones que encontrarás en su [página de descarga](https://docs.python.org/3/using/windows.html).

## Ejecución de un programa Python3

Creamos el fichero `adivina.py` con el siguiente contenido:

    #!/usr/bin/env python
    import random
    
    a=random.randrange(0, 100)
    intentos=1
    b=int(input("Introduce un número:"))
    while a!=b:
            if b>a:
                    print("El número introducido es mayor")
            else:
                    print("El número introducido es menor")
            intentos=intentos+1
            b=int(input("Introduce un número:"))
    print("Has acertado en %d intentos." % intentos)

Para ejecutar el código fuente, desde cualquier sistema operativo donde tengamos el interprete de python, ejecutamos la siguiente instrucción:

        $ python3 adivina.py 
        Introduce un número:

