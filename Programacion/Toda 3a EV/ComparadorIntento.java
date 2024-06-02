package Theta;

import java.util.Arrays;

public class ComparadorIntento {
    public static void main(String[] args) {
        int i=0;
        Frutas[] frutas=new Frutas[4];
    
        Frutas Naranja=new Frutas();
        Frutas Limon=new Frutas();
        Frutas Fresa=new Frutas();
        Frutas Sandia=new Frutas();
        
        frutas[0]=Limon;
        frutas[1]=Sandia;
        frutas[2]=Naranja;
        frutas[3]=Fresa;
        System.out.println("Array Tal Cual: ");
        for(Frutas uno:frutas){
            System.out.println("Fruta: "+ ++i +" : "+ uno.MostrarTodo());
        }
        i=0;
        System.out.println("Array Ordenado: ");
        Arrays.sort(frutas);
        for(Frutas uno:frutas){
            System.out.println("Fruta: "+ ++i +" : "+ uno.MostrarTodo());
        }
    }
}
