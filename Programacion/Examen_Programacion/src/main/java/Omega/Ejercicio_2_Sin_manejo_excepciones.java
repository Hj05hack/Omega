/** Haz una aplicaicon de Pianos, que pida al usuarios nombres de marcas y muestre por pantalla
    el número de marcas que él dese , no puede haber duplicados/repetidos **/
package Omega;

import java.util.InputMismatchException;
import java.util.Iterator;
import java.util.Scanner;
import java.util.TreeSet;

public class Ejercicio_2_Sin_manejo_excepciones{
    public static void main(String[] args) {
        //Declaracion de variables
        TreeSet<String>pianos=new TreeSet<>();
        Scanner sc=new Scanner(System.in);
        String marca;
        Integer longitud;
        Integer numeroMarcas;
        Integer marcasMostradas;
        //Pedir al usuario marcas hasta que ponga 'fin'
        while(true){
            System.out.print("Dime el nombre de la marca de piano ('fin' finaliza el programa): ");
            marca=sc.next();
            if(marca.equals("fin")){
                break;
            }
            pianos.add(marca);
        }
        //Mostrar todas las marcas y guardar tamaño en variable
        System.out.println("Marcas: "+pianos.toString());
        longitud=pianos.size();
        //Pedir al usuario el numero a mostrar y corregir los posibles fallos
        marcasMostradas=0;
        System.out.print("Introduce las marcas mostrar (máximo "+longitud+"): ");
        numeroMarcas=sc.nextInt();
        do{
            if(numeroMarcas<0 && marcasMostradas<numeroMarcas){
                Iterator<String> iterator = pianos.iterator();
                while(iterator.hasNext()&& marcasMostradas<numeroMarcas){
                    System.out.println("Marca "+(marcasMostradas+1)+": "+iterator.next());
                    marcasMostradas++;
                }
            }
        }while(marcasMostradas<numeroMarcas);  
    }
}
