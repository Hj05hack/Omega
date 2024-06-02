/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Theta;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.NoSuchElementException;

/**
 *
 * @author HJ
 */
public class IntroduccionLinkedList {
    public static void main(String[] args) {
        
    
    //necesitaremos la interfaz queue y list, en cola se usa el metodo fifo
    LinkedList<String> fila = new LinkedList<>();
    
  fila.add("Cervantes");
  fila.addFirst("Lope de Vega");
  fila.add("Quevedo");
  fila.addLast("Garcilaso");
  fila.add(null);//se permiten nulos
  fila.add("Cervantes");//se permiten repetidos
  
  for(String autor:fila) {
      System.out.println(autor);
  }
  
    System.out.println("");
            Iterator<String> iterando = fila.iterator();
            //debes hacer que la lista sea iterable por lo que usas el metodo Iterator el cual nos va a permitir iterar y nos devuelve un tipo Iterator(String) 
            while(iterando.hasNext()){//va a entrar en el bucle siempre que haya un elemento siguiente, ese elemento lo capturaremos con el next
                System.out.println(iterando.next());
            }
                try {
                System.out.println("Primer autor: " + fila.get(11));
                }catch(IndexOutOfBoundsException e) {
                System.out.println("Error");
                }
        try{
        System.out.println("Autor en cabeza y no borrado: " + fila.element());//si esta vacia sale una excepcion, por lo que debemos manejar esa excepcion
        } catch (NoSuchElementException e){
            System.out.println("Excepcion: Fila sin elementos");
        }
        
        fila.poll();//coje al primero lo devuelve y lo borra, en caso de no existir un elemento devuelve null, no como una excepcion en el element;
        System.out.println("Autor en cabeza y borrado: " + fila.poll());
        try{
    fila.remove();//devuelve un objeto, en este caso un string
            System.out.println("Borramos a: " + fila.remove("Garcilaso"));
        }catch(NoSuchElementException e){
            System.out.println("Excepcion: No hay elementos para borrar");
        }
          System.out.println("Acabo de borrar al autor: " + fila.remove());//borrara al primero al ser fifo
          System.out.println("Acabo de borrar al autor: " + fila.remove());//borrara al primero al ser fifo
          fila.size();
          
        LinkedList<Integer>Beta=new LinkedList<>();
        Beta.add(45);
        Beta.add(56);
        Beta.add(23);
        
        for(Integer numero:Beta){
            System.out.print(numero+" ");
          
        }
            
    }
    
}
