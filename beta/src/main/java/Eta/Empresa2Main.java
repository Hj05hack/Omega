package Eta;
import java.util.Scanner;
import Bases.LimpiarConsola;
public class Empresa2Main {
    public static void main(String[] args) {
        LimpiarConsola.limpiarConsola();
        Scanner datos2=new Scanner(System.in);

        System.out.print("Dime cuantos jefes tiene la empresa: ");
        int numeroJefes= datos2.nextInt();

        System.out.print("Dime cuantos empleados hay: ");
        int numeroEmpleados=datos2.nextInt();

        Jefe2[] jefes =new Jefe2[numeroJefes];
        Empleado2[] empleados =new Empleado2[numeroEmpleados];

        for(int i=0;i<jefes.length;i++){
            System.out.println((i+1)+"º Jefe");
            jefes[i]= new Jefe2();
        }

        for(int j=0;j<empleados.length;j++){
            System.out.println((j+1)+"º Empleado");
            empleados[j]= new Empleado2();
        }
        
        for( int i=0;i<jefes.length;i++){
            System.out.println("Jefe "+(i+1)+":");
            jefes[i].mostrarTodo();
        }

        for( int j=0;j<empleados.length;j++){
            System.out.println("Empleado "+(j+1)+":");
            empleados[j].mostrarTodo();
        }

        datos2.close();
    }
}
