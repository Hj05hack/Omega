package Theta;

import java.util.LinkedList;
import java.util.Scanner;

public class LinkedListIntegers {
    public static void main(String[] args) {
        
        Scanner numero=new Scanner(System.in);
        System.out.print("¿Cuantos elementos va a  haber en la lista? ");
        int longitud=numero.nextInt();
        
        LinkedList<Integer>Prueba=new LinkedList<>();
        for (int i=0;i<longitud;i++){
            Prueba.add((int)(Math.random()*100));
        }
        for (int j:Prueba){
            System.out.print(j+" ");
        }
    }
}
