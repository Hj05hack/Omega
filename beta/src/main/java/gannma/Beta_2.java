package gannma;
import java.util.Scanner;
public class Beta_2 {
    public static void main(String[] args) {
        contarpalabras();
    }

    public static String pedirfrase(){
        Scanner cogefrase=new Scanner(System.in);
        System.out.print("Dime una frase: ");
        String frase=cogefrase.nextLine();
        cogefrase.close();

        return frase;
    }

    public static void contarpalabras(){
        String[] arraypalabras=pedirfrase().split(" ");
        int contador;
        contador=arraypalabras.length;
        System.out.println("El número total de palabras es de "+contador);
   }
}

