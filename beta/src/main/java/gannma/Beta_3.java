package gannma;
import java.util.Scanner;
public class Beta_3{
    public static void main(String[] args) {
        Scanner numerodefrases=new Scanner(System.in);
        System.out.print("¿Cuantas frases quieres hacer?");
        int numFrases = numerodefrases.nextInt();
        
        numerodefrases.close();
        for(int i=0;i<numFrases;i++){
            Beta_2.contarpalabras();
        }
    }
}