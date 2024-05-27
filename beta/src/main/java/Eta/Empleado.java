package Eta;
import java.util.InputMismatchException;
import java.util.Scanner;
import Bases.Excepciones.SalarioInvalido;
public class Empleado {
    private String nombre;
    private Float salario;
    Scanner datos=new Scanner(System.in);

    public Empleado() throws Exception{
        this.nombre=getNombre();
        this.salario=getSalario();
    }

    public String getNombre() {
        System.out.print("Dime el nombre del empleado: ");
        nombre=datos.nextLine();
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public Float getSalario() throws SalarioInvalido{
        while(true){
            try {
                System.out.print("Dime el salario de este empleado: ");
                salario=datos.nextFloat();
                    if(salario<0) throw new SalarioInvalido();
            } catch(SalarioInvalido e) {
                e.mostrarMensaje();
                datos.nextLine(); 
            }catch(InputMismatchException e2){
                System.out.println("Solo se admiten numeros");
                datos.nextLine();
            }
            return salario;
        }
    }
    public void setSalario(Float salario){
        this.salario=salario;
    }

    public void getTodo(){
        try {
            this.nombre=getNombre();
            this.salario=getSalario();
        } catch (Exception e) {}
    }

    public void mostrarNombre(){
        System.out.println("El nombre es: "+nombre);
    }
    public void mostrarSalario(){
        System.out.printf("El sueldo es de: %.2f€", salario);
    }
    public void mostrarTodo(){
        mostrarNombre();
        mostrarSalario();
    }

    public static void main(String[] args) {
        try {
            Empleado uno=new Empleado();
            uno.getTodo();
        } catch (Exception e) {}
    }
}
