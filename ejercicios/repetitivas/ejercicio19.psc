//################################################################################
//Realizar un ejemplo de menú, donde podemos escoger las distintas opciones hasta 
//que seleccionamos la opción de "Salir".
//################################################################################
//Análisis
//La realización del menú la hacemos con un bucle repetir y una alternativa "según"
//En el bucle se realiza las siguientes acciones:
// * Mostrar el menú con las distintas opciones
// * Leer opción
// * Según opción ejecutamos las instrucciones necesarias.
// * En otro caso (opción incorrecta): Mostramos opción incorrecta
// La opción de "salir" la podemos dejar vacía (no ejecutar ninguna instrucción).
// Se repetir el bucle hasta que elijamos la opción de salir.
// Datos de entrada: opción
// Información de salida: Según la opción escogida
// Variables: opcion(entero)
//################################################################################

Proceso sin_titulo
    Definir opcion Como Entero;
    Repetir
        // mostrar menu
        Limpiar Pantalla;
        Escribir "Menú de recomendaciones";
        Escribir "   1. Literatura";
        Escribir "   2. Cine";
        Escribir "   3. Música";
        Escribir "   4. Videojuegos";
        Escribir "   5. Salir";
        // ingresar una opcion
        Escribir "Elija una opción (1-5): ";
        Leer opcion;
        // procesar esa opción
        Segun opcion Hacer
            1:
                Escribir "Lecturas recomendables:";
                Escribir " + Esperándolo a Tito y otros cuentos de fúbol (Eduardo Sacheri)";
                Escribir " + El juego de Ender (Orson Scott Card)";
                Escribir " + El sueño de los héroes (Adolfo Bioy Casares)";
            2:
                Escribir "Películas recomendables:";
                Escribir " + Matrix (1999)";
                Escribir " + El último samuray (2003)";
                Escribir " + Cars (2006)";
            3:
                Escribir "Discos recomendables:";
                Escribir " + Despedazado por mil partes (La Renga, 1996)";
                Escribir " + Búfalo (La Mississippi, 2008)";
                Escribir " + Gaia (Mägo de Oz, 2003)";
            4:
                Escribir "Videojuegos clásicos recomendables";
                Escribir " + Día del tentáculo (LucasArts, 1993)";
                Escribir " + Terminal Velocity (Terminal Reality/3D Realms, 1995)";
                Escribir " + Death Rally (Remedy/Apogee, 1996)";
            5:
                Escribir "Gracias, vuelva prontos";
            De otro modo:
                Escribir "Opción no válida";
        FinSegun
        Escribir "Presione enter para continuar";
        Esperar Tecla;
    Hasta Que opcion=5
FinProceso