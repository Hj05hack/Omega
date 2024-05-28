package Eta;
import java.util.Scanner;
import java.util.InputMismatchException;
import Bases.LimpiarConsola;
import Bases.Excepciones.EdadNoValidaException;
public class gestión_excepciones1 {
    public static void main(String[] args) throws EdadNoValidaException{
        Scanner dato=new Scanner(System.in);
        while(true){
            try{
                System.out.println("Bienvendio al sistema de jovenes y viejovenes entre 18 y 65 años");
                System.out.print("Introduce tu edad: ");
                int edad=dato.nextInt();
                if(edad<18 || edad>65) throw new EdadNoValidaException();
                else{
                    System.out.println("Edad correcta");
                    break;
                }
            }catch(EdadNoValidaException e){
                LimpiarConsola.limpiarConsola();
                e.mostrarMensaje();
                dato.nextLine();
            }catch(InputMismatchException e2){
                LimpiarConsola.limpiarConsola();
                System.out.println(" ¡¡Pero introduce un número hombre !!");
                dato.nextLine();
            }
        }
        dato.close();
    }
}
