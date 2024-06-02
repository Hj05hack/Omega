//Ejemplo 1 trimestre 3
package Theta;

import java.util.ArrayList;//proviene de ese paquete arraylist
//array list permite tener duplicados y nulos al contrario que muchas otras colecciones
import java.util.Iterator;

public class IntroduccionArrayList {

    public static void main(String[] args) {      
    

  ArrayList<String> autores = new ArrayList</*no es necesario poner el tipo de dato*/>(/*constructor, para que sea dinÃ¡mico*/);
  
  autores.add("Cervantes");
  autores.add("Lope de Vega");
  autores.add("Quevedo");
  autores.add("Garcilaso");
  autores.add(null);//se permiten nulos
  autores.add("Cervantes");//se permiten duplicados
  System.out.println(autores);
  autores.add(0,"Gongora");//lo pones en la posicion deseada, los demas se muven una posicion de acuerdo a el cambio realizado
  System.out.println(autores);
        
        System.out.println("Numeros de elementos: " + autores.size());//forma para mostrar
        System.out.println(autores.toString());//forma para mostrar
        System.out.println("");
    try {
        autores.add(8,"Luismi");
    }catch (IndexOutOfBoundsException e) {//añadimos la execpcion para seguir con el programa
        System.out.println("Error");
    }
        System.out.println("");
   autores.add("Gongora");
   System.out.println(autores);
   System.out.println("Numero de elementos: " + autores.size());
   //al estar trabajando con una estructura dinamica la longitud del vector aumenta en el caso de añadir elementos 
   //a este mismo al contrario al borrar un elemento
   
   Iterator<String> iterando = autores.iterator();
   //debes hacer que la lista sea iterable por lo que usas el metodo Iterator el cual nos va a permitir iterar y nos devuelve un tipo Iterator(String) 
   while(iterando.hasNext()){//va a entrar en el bucle siempre que haya un elemento siguiente, ese elemento lo capturaremos con el next
       System.out.println(iterando.next());
   }
       try {
       System.out.println("Primer autor: " + autores.get(11));
       }catch(IndexOutOfBoundsException e) {
       System.out.println("Error");
       }
       
    System.out.println("Numero de elementos: " + autores.size());
    System.out.println(autores);
    System.out.println("Este es el numero 2: " + autores.get(2));
    System.out.println("Este es el numero de autores: " + autores.size());
    autores.remove(2);//eliminas dicha posicion
    System.out.println(autores);
    System.out.println("Este es el numero 2: " + autores.get(2));//al eliminar un elemento, se alteran las posiciones debido a la 
    //dinamicidad de la estructura
    System.out.println("Este es el numero de autores: " + autores.size());
    autores.remove("Cervantes");//Borrara el primer objeto que se encuentre que coincida
    System.out.println(autores);
    System.out.println("Este es el numero 2: " + autores.get(2));
    System.out.println("Este es el numero de autores: " + autores.size());
    
     boolean estaCervantes = autores.contains("Cervantes");//busca dentro de la lista, devuelve un boolean
    System.out.println("¿Esta Cervantes en la lista? " + estaCervantes);
    
     int posicion = autores.indexOf("Cervantes");
    System.out.println("Posicion en la lista Cervantes: " + posicion);
    System.out.println(autores);
    
    String autorAnterior = autores.set(5, "Avellaneda"); //reemplaza el elemento de la lista por el dicho, tambien devuelve un elemento
        System.out.println("Este es el anterior: " + autorAnterior);
        System.out.println("Este es el nuevo: " + autores.get(5));
    System.out.println("Este es el numero de autores: " + autores.size());
    System.out.println(autores);
     
    System.out.println("Este es el numero de autores: " + autores.size());
    autores.clear();
    System.out.println("Los autores son : " + autores);
    System.out.println("Este es el numero de autores: " + autores.size());
   
}
}