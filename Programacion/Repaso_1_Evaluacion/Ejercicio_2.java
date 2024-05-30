
package Repaso_1_Evaluacion;
/*Escribe un programa que solicite al usuario una cadena y luego muestre la misma cadena pero en reverso.*/
import java.util.Scanner;
public class Ejercicio_2 {
    public static void main(String[] args) {
        String frase;
        Scanner scanner=new Scanner(System.in);
        char[]fraseReversa;
        
        System.out.print("Dime una frase: ");
        frase=scanner.nextLine();
        fraseReversa=frase.toCharArray();
        System.out.print("Frase reversa: ");
        for(int i=fraseReversa.length-1;i>=0;i--){
            System.out.print(fraseReversa[i]);
        }
    }
}
