# Compilación e interpretación de un programa Java

A la hora de instalar Java tenemos que tener en cuenta que tenemos dos componentes diferentes:

* **Java Runtime Environment (JRE)** son el conjunto de aplicaciones que se instalan en un equipo para que puedan ejecutarse en él aplicaciones java. Los dos componentes principales de un JRE son:

	* Java Virtual Machine: Aplicación que ejecuta el código java en bytecode y que está adaptada a la plataforma sobre la que opera.
	* Bibliotecas Java

* **Java Development Kit (JDK)** son el conjunto de programas para desarrollar aplicaciones y entre otros incluye el compilador javac que convierte un programa fuente java a bytecode. Al instalar el JDK se instala también el componente JRE.

## Instalación de JDK 

Existen diferentes implantaciones de JDK (la actual es la 10), siendo la versión recomendable para Linux la 1.8. Actualmente el propietario de Java es la empresa Oracle y ha modificado la antigua licencia libre de Java, por lo que ya no es posible que se distribuya legalmente en las distribuciones de software libre. Nosotros optaremos por utilizar OpenJDK, que es una implementación libre de Java. En una distribución Linux Stretch o Ubuntu 16.04, instalamos el siguiente paquete:

	$ apt-get install openjdk-8-jdk

En Windows tendríamos que bajarnos el instalador desde la [página de descargas de Java](https://www.java.com/en/download/) e instalarlo.

## Compilación de un programa Java

Utilizando nuestro editor de texto favorito vamos a crear el fichero `Adivina.java` con el siguiente contenido:

	import java.util.Scanner;
	public class Adivina {
	     public static void main(String[] args) {
	     	int num_secreto,numero,intentos;
	     	Scanner sc = new Scanner(System.in);
			intentos=1;
			num_secreto=(int) (Math.random()*100+1);
			System.out.println("Introduce un número:");
			numero= sc.nextInt();
			while (numero!=num_secreto)
			{
				if(numero>num_secreto) 
				{
					System.out.println("El número introducido es mayor\n");
				}
				else
				{
					System.out.println("El número introducido es menor\n");
				}
				intentos++;
				System.out.println("Introduce un número:");
				numero= sc.nextInt();
			}
			System.out.println("Lo has acertado en "+intentos +" intentos.");
	     }
	}

A continuación compilamos la aplicación:

	$ javac Adivina.java

y se creará un fichero bytecode `Adivina.class`. Este fichero es portable, por lo tanto podemos ejecutarlo tanto en Linux como en Windows con la siguiente instrucción:

	java Adivina
	Introduce un número:
	...
