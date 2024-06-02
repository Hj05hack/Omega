/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Theta;

import java.util.HashSet;
import java.util.Iterator;


public class IntroduccionHashSet {
    public static void main(String[] args) {
        
    
    HashSet<String> autores = new HashSet<>();
    boolean estaVacio = autores.isEmpty();
        System.out.println("Esta la coleccion vacia?" + estaVacio);
        autores.add("Juan");
        autores.add("Pepe");
        autores.add("Juan");//simplemente no lo añade, no hace falta manejarlo con una excepcion
        System.out.println("Primer paso: " + autores);
   
        autores.add(null);
        autores.add("Miriam");
        System.out.println("Actualizamos: " + autores);
        
    autores.remove("Juan");
        System.out.println("Sigue estando Juan? " + autores);
        
    autores.add("Juan");
        System.out.println("Ahora esta Juan? " + autores);
        
    autores.add("Mario");
        System.out.println(autores);//siempre va el nulo primero
        
    boolean estaJuan= autores.contains("Juan"); 
        System.out.println("Esta Juan dentro de la lista? " + estaJuan);
    
        estaVacio = autores.isEmpty();
        System.out.println("Esta la coleccion vacia?" + estaVacio);
        System.out.println("\nListado de autores " + autores.toString() + "\n");
        
        int i = 0;
     for(String autor:autores) {
         System.out.println("Autor numero " + (++i) + ": " + autor);
    }
        
        Iterator<String> iterando = autores.iterator();//un objeto que usaremos para iterar
        while(iterando.hasNext()) {
            String siguiente = iterando.next();
            System.out.println(siguiente);
        }
    System.out.println("Tenemos: " + autores.size() + " elementos.");
    autores.remove("null");
    System.out.println("Tenemos: " + autores.size() + "elementos.");
    
    autores.clear();
    
    } 
}
