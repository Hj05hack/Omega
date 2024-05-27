package Bases.Excepciones;

public class EdadInvalidaException extends Exception{
    public void mostrarMensaje(){
        System.out.println("No se puede tener una edad menor que 0");
    }
}

