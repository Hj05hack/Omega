package Bases.Excepciones;

public class EdadNoValidaException extends Exception{
    public void mostrarMensaje() {
        System.out.println( "La edad debe estar entre 18 y 65" );
    }
}

