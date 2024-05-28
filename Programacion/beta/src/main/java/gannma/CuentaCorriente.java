package gannma;
import java.util.Scanner;
public class CuentaCorriente {
    Scanner datos=new Scanner(System.in);
    private int numerodecuenta;
    private double saldo;
    private String cliente;
    private int numSiguiente=0;
    CuentaCorriente(){
        this.cliente=getCliente();
        this.numerodecuenta=getNumeroCuenta();
        this.saldo=getSaldo();
    }
    public void CrearCuentaCorriente(){
        proximaCuenta();
        this.numerodecuenta=getNumeroCuenta();
        this.cliente=getCliente();
        this.saldo=getSaldo();
    }
//1.CREAR CUENTA
    public void proximaCuenta(){
        this.numerodecuenta=numSiguiente++;
    }

    public String getCliente(){
        System.out.print("Ingrese el nombre del Cliente: ");
        cliente =datos.nextLine();
        return cliente;
    }
    public void setCliente(String cliente){
        this.cliente=cliente;
    }

    public int getNumeroCuenta(){
        if(numSiguiente==0){
            System.out.println("Parece que no tienes ninguna cuenta con nosotros,¡¡ ya verás que facil es !!");
            proximaCuenta();
            return numSiguiente;
        }else{
            System.out.println("Encantados de que quieras crear otra cuenta tienes creadas un total de: "+numerodecuenta);
            proximaCuenta();
            return numSiguiente;
            }
    }
    public void setNumeroCuenta(int numSiguiente){
        this.numerodecuenta=numSiguiente;
    }

    public double getSaldo(){
        saldo=Math.round(Math.random()*1000);
        System.out.println("\nTu saldo es de: "+saldo);
        return saldo;
    }
    public void setSaldo(double saldo){
        this.saldo=saldo;
    }
//2.INGRESAR EFECTIVO
    public void IngresarEfectivo(){
        System.out.println("\nIngrese la cantidad de dinero deseada a ingresar a su cuenta, saldo actual: "+saldo);
        double ingreso=datos.nextDouble();
        this.saldo=saldo+ingreso;
        System.out.println("\nSu saldo actual es de: "+saldo);
    }                                                                          
//RETIRAR EFECTIVO
    public boolean  retiroEfectivo(){
        System.out.print("\nDime la cantidad a retirar: ");
        double retiro=datos.nextDouble();
        if(retiro>saldo){
            System.out.println("No tienes dinero suficiente :( ");
            return false;
        }else{
            saldo=saldo-retiro;
            System.out.println("\nTu saldo restante es de: "+saldo);
            return true;
        }
    }
}