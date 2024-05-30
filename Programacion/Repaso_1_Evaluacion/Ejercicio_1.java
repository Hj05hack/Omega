
package Repaso_1_Evaluacion;
/*Escribe un programa que solicite al usuario una cadena y luego muestre la longitud de la misma.*/

import java.util.Scanner;
public class Ejercicio_1 {
    public static void main(String[] args) {
        String frase;
        Integer longitud;
        String[]palabras;
        
        Scanner scanner=new Scanner(System.in);
        System.out.print("Introduce una frase: ");
        frase=scanner.nextLine();
        longitud=frase.length();
        palabras=frase.split(" ");
        System.out.println("La logintud de la frase es: "+longitud+" carácteres");
        System.out.println("La frase tiene "+palabras.length+" palabras");
    }
}
