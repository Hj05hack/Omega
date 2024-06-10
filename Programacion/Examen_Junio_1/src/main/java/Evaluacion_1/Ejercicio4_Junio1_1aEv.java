package Evaluacion_1;

import java.util.Scanner;
//Haz un programa de cine que le pida el numero de entradas o normal o con descuento al usuario y que al salir
//le diga el numero de entradas y el total de dinero que debe dar
public class Ejercicio4_Junio1_1aEv {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcion;
        int dineroEntrada = 30;
        double dineroEntradaDescuento;
        int dineroTotal = 0;
        int entradasNormal = 0;
        int entradasDescuento=0;
        int entradasTotal=0;
        int dineroTotalNormal=0;
        double dineroTotalDescuento=0;
        do {
            dineroTotal+=(dineroTotalNormal+dineroTotalDescuento);
            entradasTotal+=(entradasDescuento+entradasNormal);
            System.out.println("\nTotal acumulado: "+dineroTotal);
            System.out.println("Elige una de estas opciones: ");
            System.out.println("1. Comprar entrada (30 euros / entrada) ");
            System.out.println("2. Comprar entrada con bono de descuento (20% Descuento) ");
            System.out.println("3. Salir ");
            System.out.print("Tu opcion: ");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    System.out.println("Introduzca el numero de entradas que desea: ");
                    entradasNormal = sc.nextInt();
                    dineroTotalNormal = dineroEntrada*entradasNormal;
                    System.out.println("Ha comprado "+entradasNormal+" que valen: " + dineroEntrada);
                    System.out.println("Las entradas te han costado: "+dineroTotalNormal);
                    break;
                case 2:
                    System.out.println("Introduzca el numero de entradas que desea: ");
                    entradasDescuento = sc.nextInt();
                    dineroEntradaDescuento = dineroEntrada*0.80;
                    dineroTotalDescuento = dineroEntradaDescuento*entradasDescuento;
                    System.out.println("Ha comprado la entrada que vale: " + dineroEntradaDescuento);
                    System.out.println("Las entradas te han costado: "+dineroTotalDescuento);
                    break;
                case 3:
                    System.out.println("Ha elegido salir, que tenga un buen dia.");
                    break;
                default:
                    System.out.println("Opción no contemplada.");
            }
        } while (opcion != 3);
        
        System.out.println("Ha comprado: " + entradasTotal + " entradas, que hace un total de: " + dineroTotal + "€");
    }
}
