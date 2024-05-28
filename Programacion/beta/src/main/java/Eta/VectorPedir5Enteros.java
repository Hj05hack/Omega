package Eta;
import java.util.Scanner;
import java.util.InputMismatchException;
/*Pedir 5 numeros por teclado hacer un array (no da un número, corregir excepcion) y mostrarlo (Scanner, ImputMissMatchExcepcion)*/
public class VectorPedir5Enteros {
    public static void main(String[] args) {
        Scanner numbers=new Scanner(System.in);
        int[] numeros=new int[5];
        int i=0;
        int errores=0;
               
        do{
            System.out.print("Introduzca un numero entero: ");
            try{
                numeros[i]=numbers.nextInt();
                i++;
            }catch(InputMismatchException e){
                System.out.println("Ha ocurrido un error fatal: "+e.getClass());
                errores++;
                System.out.println("Llevas "+errores+" errores");
                numbers.nextLine();
            }
        }while(i<numeros.length);
        numbers.close();
    }
}
        

