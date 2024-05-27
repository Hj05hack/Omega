package gannma;
import java.util.Scanner;
public class Reloj {
    Scanner reloj=new Scanner(System.in);
     //Dos constructores sin argumentos y con argumentos, ussar get y set, imprimir la hora (hh:mm:ss), numeros de segundos,sumar horas, minutos y segundos
    private int horatero;
    private int minutero;
    private int segundero;
    private String nombre;

    Reloj(){
        do{
        System.out.print("Dime solo los segundos: ");
        segundero=reloj.nextInt();
        }while(segundero<0 | segundero>59);
        do{
        System.out.print("Dime solo los minutos: ");
        minutero=reloj.nextInt();
        }while(segundero<0 | minutero>59);
        do{
        System.out.print("Dime solo las horas: ");
        horatero=reloj.nextInt();
        }while (horatero<0 | horatero>23);
    }
    Reloj(String nombre){
        this.nombre=nombre;
        System.out.print("Dime los segundos: ");
        int segundos=reloj.nextInt();
        arregloSegundos(segundos);

        System.out.print("Dime los minutos: ");
        int minutos=reloj.nextInt();
        arregloMinutos(minutos);

        System.out.print("Dime las horas: ");
        int horas=reloj.nextInt();
        arregloHoras(horas);
    }

    Reloj(int hora, int minutos, int segundos){
        this.horatero = hora;
        this.minutero = minutos;
        this.segundero=segundos;
    }
    public String getNombre(){
        return nombre;
    }
    public void setNombre(String name){
        this.nombre=name;
    }
    public Integer getHoras(){
        return horatero;
    }
    public void setHoras(Integer horas){
        this.horatero=horas;
    }

    public Integer getMinutos() {
        return minutero;
    }
    public void setMinutos(Integer minutos){
        this.minutero=minutos;
    }
    
    public Integer getSegundos(){
        return segundero;
    }
    public void setSegundos(Integer segundos) {
        this.segundero = segundos;
    }

    public Integer calcularSegundos(){
        int segundosTotales=(horatero*3600+minutero*60+segundero);
        return segundosTotales;
    }

    public void imprimirHora(){
        System.out.println("La hora seleccionada es: "+horatero+":"+minutero+":"+segundero);
    }
    public void imprimirSegundos(){
        System.out.println("Los segundos totales son: "+calcularSegundos());
    }
    public void arregloSegundos(int segundos){
        if(segundos>60){
            minutero++;
            segundero=segundos-60;
        }
        else{segundero=segundos;
        }
    }
    public void arregloMinutos(int minutos){
        if(minutos>60){
            horatero++;
            minutero=minutos-60;
        }
        else{minutero=minutero+minutos;
        }
    }
    public void arregloHoras(int horas){
        if(horas>=24){
            horatero=horatero+horas-24;
        }else{horatero=horatero+horas;
    }
}
}
