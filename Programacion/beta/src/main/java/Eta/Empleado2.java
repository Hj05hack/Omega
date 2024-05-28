package Eta;
import java.util.Scanner;
import Bases.Excepciones.EdadInvalidaException;

public class Empleado2 {
    Scanner datos = new Scanner(System.in);
    private String nombre;
    private int edad;

    public Empleado2(){
        try {
            this.edad=getEdad();
            this.nombre = getNombre();
        } catch (Exception e) {}
    }

    public int getEdad(){
        while(true){
        try{
            System.out.print("\tDime la edad: ");
            edad=datos.nextInt();
            if (edad<0)throw new  EdadInvalidaException();
        }catch(EdadInvalidaException e){
            e.mostrarMensaje();
            datos.nextLine();
        }
        return edad;
        }
    }
    public void setEdad(int edad){
        this.edad=edad;
    }

    public String getNombre(){
        System.out.print("\tDime el nombre: ");
        nombre=datos.next();
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre=nombre;
    }

    public void  mostrarEdad(){
        System.out.println("\tLa edad del empleado es: "+edad);
    }
    public void mostrarNombre(){
        System.out.println("\tEl nombre del empleado es: "+nombre);
    }
    public void mostrarTodo(){
        mostrarEdad();
        mostrarNombre();
    }
}
