/**Crea un programa en java que nos pida un numero de deportistas, nos los muestren
 y depues nos muestre los pares **/

package Omega;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Iterator;
public class Ejercicio_1_Con_manejo_excepciones {
    public static void main(String[] args) {
        //Declaracion de Variables a usar
        int numerodeportistas;
        Scanner scanner=new Scanner(System.in);
        ArrayList<Integer> deportistas=new ArrayList<>();
        int deportista=0;
        int comprobante=0;
        do{
            try{   
                //Pedir numero de deportistas
                System.out.print("Dime el número de deportistas: ");
                numerodeportistas=scanner.nextInt();
                if(numerodeportistas<0){
                    throw new ExcepcionMia();
                }
                else{
                    do{
                        deportistas.add(deportista);
                        deportista++;
                    }while(deportista<numerodeportistas);
                    //Mostrar todos los deportistas
                    System.out.println("Hay "+numerodeportistas+" deportistas registrados:");
                    for(Integer i:deportistas){
                        System.out.print((i+1)+" ");
                    }
                    //Mostrar los pares
                    System.out.println("\nSe mostraran los pares: ");
                    for (Iterator<Integer> iterator = deportistas.iterator(); iterator.hasNext();) {
                        Integer numero = iterator.next();
                        if(numero%2==0 && numero<deportistas.size() && numero!=0){
                            System.out.println("Deportista "+numero);
                        }
                    }
                    comprobante++;
                }
            }catch(InputMismatchException e2){
                System.out.println("Debe ser un numero entero positivo ");
                scanner.nextLine();
            }catch(ExcepcionMia e3){
                e3.getMessage();
            }
        }while(comprobante==0);
    }
}
