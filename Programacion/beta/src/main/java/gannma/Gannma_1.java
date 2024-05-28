package gannma;
import java.util.InputMismatchException;
import java.util.Scanner;
public class Gannma_1 {
    public static void main(String[] args) {
        Scanner entrada=null;
        int[] numeros=new int [5];
        //Primera Parte
        try {
            for (int i = 0; i < numeros.length; i++) {
                System.out.print("\nIngrese el "+(i+1)+" numero:");
                numeros[i]=Integer.parseInt(System.console().readLine());
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Fuera de los Límites");
        }
          catch(NumberFormatException e2){
              System.out.println("Error, solo se permiten números enteros.");
        }
        finally{
            System.out.println("Pero el código continua...");
        }
        //Segunda parte
        try {
            entrada=new Scanner(System.in);
            System.out.print("Introduce un número entero:");
        } catch (InputMismatchException e) {
            System.out.println( "No es un número entero, pero continuamos" );
        }
        finally{
            entrada.close();
        }
    }
}
