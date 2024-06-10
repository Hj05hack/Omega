//Creame un vector de numeros enteros que le pida al usuario la longitud y que muestre todos, el mayor y el menor
package Evaluacion_1;

import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio2_Junio1_1aEv {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduzca la longitud del vector: ");
        int numeros;
        numeros = sc.nextInt();
        int[] vector = new int[numeros];
        
        for (int i = 0; i < vector.length; i++) {
            System.out.println("Introduzca un numero: ");
            vector[i] = sc.nextInt();
        }
        System.out.println("Estos son los numeros introducidos: " + Arrays.toString(vector));
        Arrays.sort(vector);
        int numeroMenor=vector[0];
        int numeroMayor=vector[numeros-1];

        System.out.println("Numero mayor: " + numeroMayor);
        System.out.println("Numero menor: " + numeroMenor);
    }   
}
