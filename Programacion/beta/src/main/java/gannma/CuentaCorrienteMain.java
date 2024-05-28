package gannma;
import java.util.Scanner;
public class CuentaCorrienteMain {
    public static void main(String[] args) {
        Scanner dato=new Scanner(System.in);
        CuentaCorriente cajaAhorro = new CuentaCorriente();
        while(true){
        System.out.println("Bienvenido a la terminal del Banco HJ\n¿Qué operación desea realizar?");
        System.out.println("1) Crear cuenta\n"+
                            "2) Ingreso de Efectivo\n"+
                            "3)Retriada de Efectivo\n"+
                            "4)Visualizar Cuenta Actual\n"+
                            "5)Salir\n");
        System.out.print("Tu elección: ");
        int opción=dato.nextInt();
        dato.close();
        switch (opción) {
            case 1:
                cajaAhorro.CrearCuentaCorriente();
            case 2:
                cajaAhorro.IngresarEfectivo();
                break;
        }
        }
    }
}
