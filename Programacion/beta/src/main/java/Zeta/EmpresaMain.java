package Zeta;
import Bases.LimpiarConsola;
import java.util.Scanner;
public class EmpresaMain {
    public static void main(String[] args) {
        LimpiarConsola.limpiarConsola();
        int emp;
        int jef;
        Scanner datos=new Scanner(System.in);
        System.out.print("Dime el numero de Empleados: ");
        emp=datos.nextInt();
        System.out.print("Dime el número de Jefes: ");
        jef=datos.nextInt();

        Empleado[] Empresa1=new Empleado[emp+jef];

//Datos 1ª Empresa
        for (int i=0;i<emp;i++){
            System.out.println((i+1)+"º Empleado: ");
            Empresa1[i]=new Empleado();
            if(i==(emp-1)){
                for(int j=emp;j<Empresa1.length;j++){
                    System.out.println(((j+1)-emp)+"º Jefe:");
                    Empresa1[j] =new Jefe();
                    }
                }
            }

            for (int i=0;i<emp;i++){
                System.out.println((i+1)+"º Empleado Especial: ");
                Empresa1[i]=new Empleado();
                if(i==(emp-1)){
                    for(int j=emp;j<Empresa1.length;j++){
                        System.out.println(((j+1)-emp)+"º Jefe:");
                        Empresa1[j] =new Jefe();
                        }
                    }
                }
        datos.close();
        }
    }
