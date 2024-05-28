/** Haz una aplicaicon de Pianos, que pida al usuarios nombres de marcas y muestre por pantalla
    el número de marcas que él dese , no puede haber duplicados/repetidos **/
package Omega;

import java.util.InputMismatchException;
import java.util.Iterator;
import java.util.Scanner;
import java.util.TreeSet;

public class Ejercicio_2_Con_manejo_excepciones{
    public static void main(String[] args) {
        //Declaracion de variables
        TreeSet<String>pianos=new TreeSet<>();
        Scanner sc=new Scanner(System.in);
        String marca;
        Integer longitud;
        Integer numeroMarcas;
        Integer marcasMostradas;
        Integer comprobante=0;
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
        do{
            try{
                marcasMostradas=0;
                System.out.print("Introduce las marcas mostrar (máximo "+longitud+"): ");
                numeroMarcas=sc.nextInt();
                if(numeroMarcas<0){
                    throw new InputMismatchException();
                }
                if(numeroMarcas>longitud){
                    throw new IndexOutOfBoundsException();
                }
                else{
                    Iterator<String> iterator = pianos.iterator();
                    while(iterator.hasNext()&& marcasMostradas<numeroMarcas){
                        System.out.println("Marca "+(marcasMostradas+1)+": "+iterator.next());
                        marcasMostradas++;
                    }
                    comprobante++;
                }
            }catch(InputMismatchException e){
                System.out.println("Debe ser un número entero positivo");
                sc.nextLine();
            }catch(IndexOutOfBoundsException e2){
                System.out.println("Debe estar dentro del margen");
                sc.nextLine();
            }
        }while(comprobante==0);    
    }
}