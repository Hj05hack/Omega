package gannma;
import java.util.Scanner;

public class GestionTragaPingas {
    public static void main(String[] args) {
        Scanner opción=new Scanner(System.in);
        Tragapingas uno=new Tragapingas();
        int opcion=1;
        while (opcion!=0) {         
            System.out.println("\nElige que hacer con tu tragapingas: "
                +"\n1-Dar de comer "
                +"\n2-Trotar"
                +"\n3-Dorimr"
                +"\n4-Status"
                +"\n0-Dejar de jugar :( ");
            opcion=opción.nextInt();  
            switch (opcion) {
                case 1:
                    uno.comer();
                    break;
                case  2:
                    uno.trotar();
                    break;
                case 3:
                    uno.dormir();
                    break;
                case 4:
                    uno.visualizar();
                    break;
                default:
                    System.out.println("Opción no válida");
                    break;
            }
        }
        opción.close();
    }
}
