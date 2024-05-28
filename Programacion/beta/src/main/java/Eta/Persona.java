package Eta;
import Bases.Excepciones.EdadInvalidaException;
import java.util.InputMismatchException;
import java.util.Scanner;
public class Persona {
    private  String nombre;
    private int edad;
    Scanner datos = new Scanner(System.in);
    Persona() throws EdadInvalidaException{
        this.nombre=getNombre();
        this.edad=getEdad();
    }

    public String getNombre(){
        System.out.print("Dime el nombre de la persona creada: ");
        String nombre=datos.nextLine();
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre=nombre;
    }

    public  int getEdad() throws EdadInvalidaException{
        while(true){
            try{
                System.out.print("Dime la edad de la persona creada: ");
                int edad=datos.nextInt();
                if (edad < 0){
                    throw new EdadInvalidaException();
                }else if(edad>101){
                    System.out.println("La edad no puede ser superior a 101 años");
                    return edad;
                }else{
                    return edad;
                }
            }catch(EdadInvalidaException e){
                e.mostrarMensaje();
                datos.nextLine();
            }catch(InputMismatchException e2){
                System.out.println("La edad solo puede ser un numero, no una letra");
                datos.nextLine();
            }
        }
    }
    public void setEdad(int edad){
        this.edad=edad;
    }

    public void mostrarDatos(){
        System.out.println(" La edad de la persona es "+edad+" mientras que su nombre es "+nombre);
    }
}
