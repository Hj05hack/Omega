
package Zeta;
import java.util.Scanner;
public class Empleado{
    Scanner datos=new Scanner(System.in);
    private int sueldo;
    String nombre;
    protected String direccion;
    public int edad;
    public Empleado(){
        this.sueldo=getsueldo();
        this.nombre=getNombre();
        this.direccion=getDireccion();
        this.edad=getEdad();
    }
    
    public int getsueldo(){
    System.out.print("\tDime el sueldo: ");
    return datos.nextInt();
    }
    public String getNombre(){
    System.out.print("\tDime el nombre: ");
    return datos.next();
    }
    public String getDireccion(){
    System.out.print("\tDime la direccion: ");
    return datos.next();
    }
    public int getEdad(){
    System.out.print("\tDime la edad: ");
    return datos.nextInt();
    }    
    public void viuslalizar(){
    System.out.println(sueldo+nombre+direccion+edad);
    }
}  
