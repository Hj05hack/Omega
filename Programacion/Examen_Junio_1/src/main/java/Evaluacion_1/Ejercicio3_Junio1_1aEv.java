//Haz un programa que calcule la media pidiendole numeros hasta que el usuario introduzca 0
package Evaluacion_1;

import java.util.Scanner;

/**
 *
 * @author IFC
 */
public class Ejercicio3_Junio1_1aEv {

    public static void main(String[] args) {
        double numero;
        int comprobante=0;
        int elementos=0;
        double total=0;
        double media;
        Scanner scanner=new Scanner(System.in);
        
        do{
            System.out.println("Introduce los numeros para calcular la media (0 termina el programa)");
            numero=scanner.nextDouble();
            if(numero!=0){
                total+=numero;
                elementos++;
            }
            else{
                comprobante++;
            }
        }while(comprobante==0);
        media=(total/elementos);
        System.out.println("Media: "+media);
    }
}
