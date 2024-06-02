package Theta;
import java.util.Scanner;
import java.util.Comparator;
public class Frutas implements Comparable<Frutas>{
    private String frutaNombre;
    private String frutaDescripcion;
    private Integer cantidad;
    Scanner sc=new Scanner(System.in);
    
    public Frutas(){
        super();
        this.frutaNombre=getFrutaNombre();
        this.frutaDescripcion=getFrutaDescripcion();
        this.cantidad=getCantidad();
    }

    public String getFrutaNombre() {
    System.out.print("\nDime el nombre de la Fruta: ");
        String Nombre=sc.nextLine();
        return Nombre;
    }

    public void setFrutaNombre(String Nombre) {
        this.frutaNombre = Nombre;
    }

    public String getFrutaDescripcion() {
        System.out.print("Dime la descripcion de "+frutaNombre+": ");
        String Descripcion=sc.nextLine();
        return Descripcion;
    }

    public void setFutaDescripcion(String Descripcion) {
        this.frutaDescripcion = Descripcion;
    }

    public Integer getCantidad() {
        System.out.print("Dime la cantidad de "+frutaNombre+": ");
        Integer Cantidad=sc.nextInt();
        return Cantidad;
    }

    public void setCantidad(Integer Cantidad) {
        this.cantidad = Cantidad;
    }
    public String MostrarTodo(){
            String TodaInfo=("Nombre: "+frutaNombre+", Descripcion: "+frutaDescripcion+", Cantidad: "+cantidad);
        return TodaInfo;
    }
    public Integer MostarCantidad(){
        return cantidad;
    }
    @Override
    public int compareTo(Frutas comparador){
        int cantidadComparada=((Frutas)comparador).MostarCantidad();
        return this.cantidad-cantidadComparada;
    }
}
