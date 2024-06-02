package Theta;
/**
 * @author:HJ
 * 
 * 
 * 
 */

import java.util.PriorityQueue;
import java.util.Scanner;

public class QuequeIntento {
    public static void main(String[] args) {
        PriorityQueue<Integer>prueba1=new PriorityQueue<>();
        PriorityQueue<String>prueba2=new PriorityQueue<>();
        Scanner numeros=new Scanner(System.in);
        int numeroElementos=4;
        for(int i=0;i<numeroElementos;i++){
            prueba1.add((int)(Math.random()*100));
        }
        for(int j:prueba1){
            System.out.println(j+" ");
        }
        
        for(int i=0;i<numeroElementos;i++){
            System.out.print("Dime una palabra: ");
            prueba2.add(numeros.next());
        }
        for(String j:prueba2){
            System.out.println(j+" ");
        }
        
        if(!prueba1.isEmpty()){
            System.out.println("No estoy vacio y mi primer elemento es: "+prueba1.poll());
            System.out.println("No estoy vacio y el tamaño es: "+prueba1.size());
        }
    }
}
