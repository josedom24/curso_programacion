//################################################################################
// Crear un programa que lea los precios de 5 artículos y las cantidades vendidas 
//por una empresa en sus 4 sucursales. Informar:
// * Las cantidades totales de cada articulo.
// * La cantidad de articulos en la sucursal 2.
// * La cantidad del articulo 3 en la sucursal 1.
// * La recaudacion total de cada sucursal.
// * La recaudacion total de la empresa.
// * La sucursal de mayor recaudacion.
//################################################################################
//Análisis
//Leo los precios de los articulos (lo gaurdo en el vector Precio)
//Leo las cantidades vendidas de los 5 articulos en las 4 sucursales (lo guardo
//en la tabla Cantidad)
//Recorro la tabla por articulos, y muestro lo que se ha vendido en total (por artículo)
//Recorro la tabla por articulos y muestro lo vendido en la sucursal 2.
// Muestro lo que se ha vendido del artículo 3 en la sucursal 1
//Recorro la tabla acumulando todo lo que se ha vendido y el total por sucursal
//Además en ese recorrido calculo la sucursal que ha vendido más.
// Datos de entrada: El número de conductores, sus nombres y kms realizados por día
// Información de salida: Los nombres de los conductores y el total de kms realizados
// Variables: Precio (tabla de 5 reales), Cantidad (tabla de 4 x 3 reales)
//			  Suma,NumMayor,Ariculos_Sucursal2,MayorRec,TotalSucursal,TotalEmpresa 
//			  (Real)
//################################################################################
   
Proceso Sucursales
   Definir Precio,Cantidad,Suma,NumMayor,Ariculos_Sucursal2,MayorRec,TotalSucursal,TotalEmpresa Como Real;
   Definir indice_art,indice_sucursal como Entero;
 
   Dimension Precio[5], Cantidad[4,5];
   
   // Leer Precios
   Para indice_art<-0 Hasta 4 Hacer
      Escribir 'Ingrese Precio Articulo ',indice_art+1,':';
      Leer Precio[indice_art];
   FinPara
   
   // Leer Cantidades
   Para indice_sucursal<-0 Hasta 3 Hacer
      Para indice_art<-0 Hasta 4 Hacer
         Escribir 'Ingrese Cant. de Articulo ',indice_art+1,', en Sucursal ',indice_sucursal+1,':';
         Leer Cantidad[indice_sucursal,indice_art];
      FinPara
   FinPara
   
   // Sumar cantidades por articulos
   Escribir 'Cantidades por articulos:';
   Para indice_art<-0 Hasta 4 Hacer
      Suma<-Cantidad[0,indice_art]+Cantidad[1,indice_art]+Cantidad[2,indice_art]+Cantidad[3,indice_art];
      Escribir 'Total articulo ',indice_art+1,':',Suma;
   FinPara
   
   // Informar Total de Articulos Sucursal 2
   Ariculos_Sucursal2<-0;
   Para indice_art<-0 Hasta 4 Hacer
      Ariculos_Sucursal2<-Ariculos_Sucursal2+Cantidad[1,indice_art];
   FinPara
   Escribir 'Total Sucursal 2:',Ariculos_Sucursal2;
   
   // Informar Sucursal 1, Articulo 3:
   Escribir 'Sucursal 1, Articulo 3:',Cantidad[0,2];
   
   // Acumular total de cada sucursal (TotalSucursal) y
   // total de la empresa (TotalEmpresa)
   MayorRec<-0; 
   NumMayor<-0; 
   TotalEmpresa<-0;
   Para indice_sucursal<-0 Hasta 3 Hacer
      TotalSucursal<-0;
      Para indice_art<-0 Hasta 4 Hacer
         TotalSucursal<-TotalSucursal+(Cantidad[indice_sucursal,indice_art]*Precio[indice_art]);
      FinPara
      Escribir 'Recaudaciones Sucursal ',indice_sucursal,':',TotalSucursal;
	  //Calculo la sucursal con mayor recaudación
      Si TotalSucursal>MayorRec entonces 
		  MayorRec<-TotalSucursal; 
		  NumMayor<-indice_sucursal+1; 
      FinSi
      TotalEmpresa<-TotalEmpresa+TotalSucursal;
   FinPara
   Escribir 'Recaudacion total de la empresa:',TotalEmpresa;
   Escribir 'Sucursal de Mayor Recaudacion:',NumMayor;

FinProceso

