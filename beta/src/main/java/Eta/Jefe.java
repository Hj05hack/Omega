package Eta;
public class Jefe extends Empleado {
    private String departamento;
    private String titulo;
    
    public Jefe() throws Exception{
        getNombre();
        getSalario();
        this.departamento=getDepartamento();
        this.titulo=getTitulo();
    }

    public String getDepartamento(){
        System.out.print("Dime el codigo de departamento: ");
        departamento =datos.nextLine();
        return departamento.toUpperCase();
    }
    public void setDepartamento(String departamento){
        this.departamento=departamento;
    }

    public String getTitulo(){
        System.out.print("Dime el titulo que tienes: ");
        titulo =datos.nextLine();
        return titulo;
    }
    public void setTitulo(String titulo){
        this.titulo=titulo;
    }

    public void setTodo(){
        getTodo();
        getDepartamento();
        getTitulo();
    }

    public void mostrarTitulo(){
        System.out.println(" El titulo que ostenta es el de: "+titulo);
    }
    public void mostrarDepartamento(){
        System.out.println(" El codigo de departamento es de: "+departamento);
    }
    public void mostrarTodo(){
        mostrarTitulo();
        mostrarDepartamento();
    }
}

