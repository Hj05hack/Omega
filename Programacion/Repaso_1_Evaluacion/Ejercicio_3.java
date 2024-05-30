package Repaso_1_Evaluacion;
/*Escribe un programa que calcule la suma de todos los elementos en un array de enteros.*/
import java.util.Scanner;
public class Ejercicio_3 {
    public static void main(String[] args) {
        int elementos;
        int numero;
        int[]suma;
        int sumaTotal=0;
        Scanner scanner=new Scanner(System.in);
        
        System.out.print("¿Cuantos elementos quieres sumar?: ");
        elementos=scanner.nextInt();
        suma=new int[elementos];
        for(int i=0;i<elementos;i++){
            System.out.print("Dime un número: ");
            numero=scanner.nextInt();
            suma[i]=numero;
        }
        for(int i:suma){
            sumaTotal+=i;
        }
        System.out.println("La suma total de los elementos es: "+sumaTotal);
    }
}
