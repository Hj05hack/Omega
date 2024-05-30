package Repaso_1_Evaluacion;
/*Escribe un programa que ordene un array de cadenas en orden alfabético.*/
import java.util.Arrays;
import java.util.Scanner;
public class Ejercicio_4 {
    public static void main(String[] args) {
        String frase;
        String[]frases;
        Integer longitud;
        Scanner scanner=new Scanner(System.in);
        
        System.out.print("Dime el numero de palabras que vas a introducir: ");
        longitud=scanner.nextInt();
        frases=new String[longitud];
        for(int i=0;i<frases.length;i++){
            System.out.print("Dime una frase: ");
            frase=scanner.next();
            frases[i]=frase;
        }
        System.out.println("Array desordenado: "+Arrays.toString(frases));
        Arrays.sort(frases);
        System.out.println("Array ordenado: "+Arrays.toString(frases));
    }
}
