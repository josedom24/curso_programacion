// Problema Ejemplo:

//    Se ingresan los precios de 5 articulos y las cantidades vendidas
// por una empresa en sus 4 sucursales. Informar:
//    * Las cantidades totales de cada articulo.
//    * La cantidad de articulos en la sucursal 2.
//    * La cantidad del articulo 3 en la sucursal 1.
//    * La recaudacion total de cada sucursal.
//    * La recaudacion total de la empresa.
//    * La sucursal de mayor recaudacion.
   
Proceso Sucursales
   
   Definir Prec,Cant,I,J,Suma,NumMayor,Suc2,MayorRec,TotSuc,TotEmp Como Numeros;
   
   // Inicializar Prec=Arreglo de precios y Cant=Arreglo para cantidades
   Dimension Prec[5], Cant[4,5];
   
   // Leer Precios
   Para I<-0 Hasta 4 Hacer
      Escribir 'Ingrese Precio Articulo ',I+1,':';
      Leer Prec[I];
   FinPara
   
   // Leer Cantidades
   Para J<-0 Hasta 3 Hacer
      Para I<-0 Hasta 4 Hacer
         Escribir 'Ingrese Cant. de Articulo ',I+1,', en Sucursal ',J+1,':';
         Leer Cant[J,I];
      FinPara
   FinPara
   
   // Sumar cantidades por articulos
   Escribir 'Cantidades por articulos:';
   Para I<-0 Hasta 4 Hacer
      Suma<-Cant[0,I]+Cant[1,I]+Cant[2,I]+Cant[3,I];
      Escribir 'Total articulo ',I+1,':',Suma;
   FinPara
   
   // Informar Total de Articulos Sucursal 2
   Suc2<-0;
   Para I<-0 Hasta 4 Hacer
      Suc2<-Suc2+Cant[1,I];
   FinPara
   Escribir 'Total Sucursal 2:',Suc2;
   
   // Informar Sucursal 1, Articulo 3:
   Escribir 'Sucursal 1, Articulo 3:',Cant[0,2];
   
   
   // Acumular total de cada sucursal (TotSuc) y
   // total de la empresa (TotEmp)
   MayorRec<-0; NumMayor<-0; TotEmp<-0;
   Para J<-0 Hasta 3 Hacer
      TotSuc<-0;
      Para I<-0 Hasta 4 Hacer
         TotSuc<-TotSuc+(Cant[J,I]*Prec[i]);
      FinPara
      Escribir 'Recaudaciones Sucursal ',J,':',TotSuc;
      Si TotSuc>MayorRec entonces 
		  MayorRec<-TotSuc; 
		  NumMayor<-J+1; 
      FinSi
      TotEmp<-TotEmp+TotSuc;
   FinPara
   Escribir 'Recaudacion total de la empresa:',TotEmp;
   Escribir 'Sucursal de Mayor Recaudacion:',NumMayor;

FinProceso

