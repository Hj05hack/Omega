//Haz un programam que te pida una frase y te ponga la primera letra en mayusculas y un punto al final
//si el usuario no lo ha puesto aún

package Evaluacion_1;

import java.util.Scanner;


public class Ejercicio1_Junio1_1aEv {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduzca una frase.");
        String frase = sc.nextLine();
        
        String fraseTransformada = frase.substring(0,1).toUpperCase() + frase.substring(1);
        if (!fraseTransformada.endsWith(".")) {
            fraseTransformada += ".";
        }
        System.out.println("Esta es la frase transformada: " + fraseTransformada);
    }
}
