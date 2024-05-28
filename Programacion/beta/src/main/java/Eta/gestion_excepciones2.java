package Eta;
import Bases.LimpiarConsola;
import Bases.Excepciones.EdadInvalidaException;
import java.util.InputMismatchException;

public class gestion_excepciones2{
    public static void main(String[] args) {
        LimpiarConsola.limpiarConsola();
        try {
            Persona primera=new Persona();
            primera.mostrarDatos();
        } catch (EdadInvalidaException e) {
        } catch (InputMismatchException e2){
        }
        }
    }

