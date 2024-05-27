package Eta;
public class Jefe2 extends Empleado2{
    private String departamento;
    public Jefe2(){
        this.departamento=getDepartamento(); 
    }
    public String getDepartamento(){
        System.out.print("\tDime el departamento: ");
        departamento = datos.next();
        return departamento;
    }
    public void setDepartamento(String departamento){
        this.departamento = departamento;
    }

    public void mostrarTodo(){
        super.mostrarTodo();
        System.out.println("\tEl departamento es: "+departamento);
    }
}
