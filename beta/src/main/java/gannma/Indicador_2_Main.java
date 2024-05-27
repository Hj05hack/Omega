package gannma;
import java.util.Scanner;
public class Indicador_2_Main {
    public static String strings(){
        String datodado;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese el dato: ");
        datodado=sc.nextLine();
        sc.close();

        return datodado;
    }

    public static Integer integers(){
        Integer datodado;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingrese el dato: ");
        datodado=sc.nextInt();
        sc.close();

        return datodado;
    }
    public static void main(String[] args) {
        System.out.println("Vamos a construir constructores, estructura: nombre,unidades,valorMin,valorMax");
        indicador2 indicador1= new indicador2(strings(), strings(),integers(), integers());
        indicador1.imprimirIndicador();
    }
}
