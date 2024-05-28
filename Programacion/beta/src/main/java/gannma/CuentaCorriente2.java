package gannma;
import java.util.Scanner;
public class CuentaCorriente2 {
    private String cliente;
    private double saldo;
    private Integer numeroCuenta;
    private Integer numeroSiguiente=0;
    Scanner dato=new Scanner(System.in);
    CuentaCorriente2 (int numeroSiguiente,String cliente){
        this.cliente=cliente;
        this.numeroCuenta=numeroSiguiente;
    }

    public String getNombre(){
        System.out.print("Dime cual es tu nombre: ");
        cliente=dato.nextLine();
        return cliente;
    }
    public void setNombre(String cliente){
        this.cliente=cliente;
    }
    public double getSaldo(){
        saldo=0;
        return saldo;
    }
    public void setSaldo(Double saldo){
        this.saldo=saldo;
    }
    public int getNumeroDeCuenta() {
        return numeroCuenta;
    }
    public void getNumeroCuenta(int numeroCuenta){
        this.numeroCuenta=numeroCuenta;
    }
    public int  getnumeroCuenta() {
        numeroCuenta=numeroSiguiente++;
        return numeroCuenta;
    }
    public void setNumeroCuenta(int numeroCuenta){
        this.numeroCuenta = numeroCuenta;
    }
    public void visualizar(){
        System.out.println("\n\tCliente: "+getNombre());
        System.out.println("\n\tNumero de cuenta: "+getNumeroDeCuenta());
    }
}