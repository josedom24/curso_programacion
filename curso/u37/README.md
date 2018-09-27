# Compilación y ejecución de un lenguaje compilado: C++

Lo primero que vamos a hacer es escribir el **código fuente**. Para ello vamos a utilizar un **IDE** (Entorno de desarrollo integrado) llamado [Zinjai](http://zinjai.sourceforge.net/) utilizando el sistema operativo Linux. El fichero `adivina.cpp` tendría el siguiente contenido:

	#include <iostream>
	#include <cstdlib>
	using namespace std;	

	int main(int argc, char *argv[]) {
		int num_secreto,numero,intentos;
		intentos=1;
		num_secreto=rand() % 100; 
		cout << "Introduce un número:";
		cin >> numero;
		while (numero!=num_secreto)
		{
			if(numero>num_secreto) 
			{
				cout << "El número introducido es mayor\n";
			}
			else
			{
				cout << "El número introducido es menor\n";
			}
			intentos++;
			cout << "Introduce un número:";
			cin >> numero;
		}
		cout << "Lo has acertado en " << intentos << " intentos.";
		return 0;
	}

Cuando compilamos y ejecutamos nuestro código fuente se genera un programa ejecutable llamado `adivina.bin`. Por lo tanto desde la línea de comandos lo podemos ejecutar:

	$ ./adivina.bin 
	Introduce un número:
	...

Podemos verificar que `adivina.bin` es un fichero binario para linux 64-bit:

	$ file adivina.bin
	adivina.bin: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=007d6a8507f270e6864af6243e127b4128f72277, not stripped

Realmente la compilación incluye varios pasos, el más importante de ellos es la creación de un fichero objeto intermedio. Que ha continuación se enlaza y producir el fichero ejecutable.

¿Qué sentido tiene compilar por partes? Cuando el código es grande no hay un solo fichero fuente sino muchos, compilar individualmente estos "módulos" permite, por ejemplo, ahorrar mucho tiempo en la modificación y compilación de un solo componente.

A continuación vamos a intentar ejecutar nuestro fichero ejecutable en Windows para comprobar que no es posible: el fichero ejecutable depende de la arquitectura (tipo de procesador, sistema operativo,...) donde se ha compilado.

Podemos probar a continuación a compilar el mismo programa en Windows e intentar ejecutarlo en Linux, y volveremos a comprobar que no es posible.
