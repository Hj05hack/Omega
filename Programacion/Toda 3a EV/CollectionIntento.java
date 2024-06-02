package Theta;

/**
 *
 * @author HJ
 */

import java.util.ArrayDeque;
import java.lang.NullPointerException;

public class CollectionIntento {
    public static void main(String[] args) {
        ArrayDeque<Integer>beta=new ArrayDeque<>();
        try{
            beta.add(875);
            beta.add(452);
            for(int i=0;i<((int)(Math.random()*10));i++){
                beta.addFirst((int)(Math.random()*100));
                beta.addLast((int)(Math.random()*100));
            }
            for(int i:beta){
            System.out.print(i+" ");
            } 
            System.out.println("El primer elemento es: "+beta.peek());
        }catch(NullPointerException e){
            System.out.println("No se admiten nulos");
        }   
    }
}
