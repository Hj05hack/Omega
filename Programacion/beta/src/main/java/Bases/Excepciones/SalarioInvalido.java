package Bases.Excepciones;

public class SalarioInvalido extends Exception{
    public void mostrarMensaje(){
        System.out.println("No se puede tener una salario menor que 0");
    }
}

