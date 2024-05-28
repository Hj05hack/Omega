package gannma;
import java.util.InputMismatchException;
import java.util.Scanner;
public class gannma_2 {
    public static void main(String[] args) {
        try{
            Scanner sc = new Scanner(System.in);
            System.out.print("Dime un número:");
            int n=sc.nextInt();
            sc.close();
            System.out.println(n-5);
        }catch(NumberFormatException e){
            System.out.println("Has introducido un tipo dato incorrecto");
        }catch(ArithmeticException e){
            System.out.println("Eso no es un numero");
        }catch(InputMismatchException e){
            System.out.println("Es un número no entero");
        }finally{
            System.out.println("Pero aqui Seguimos");
            
        }
    }
}
