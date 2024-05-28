package gannma;
import java.util.Scanner;
public class INDICADOR_HJ {
    private String nombre;
    private String unidades;
    private Integer valor_maximo;
    private Integer valor_minimo;


    public INDICADOR_HJ(String nombre,Integer valor_minimo,Integer valor_maximo,String unidades){
        this.nombre=nombre;
        this.unidades=unidades;
        this.valor_maximo=valor_maximo;
        this.valor_minimo=valor_minimo;
    }

    public String pedirNombre(Scanner dato) {
        System.out.print("Dime el nombre del indicador: ");
        String nombre1=dato.nextLine();
        nombre=nombre1;
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre=nombre;
    }

    public String pedirUniadesVelocidad(Scanner dato){
        String unidades1;
        System.out.print("Digame su unidad de medida de velocidad preferida (1-km/h | 2-mll/h): ");
        int pedidounidades=dato.nextInt();
        if (pedidounidades==1){
            unidades1="km/h";
        }
        else{
            unidades1="mill/h";
        }
        return unidades1;
    }
    public String pedirUnidadesGasolina(Scanner dato){
        String unidades1;
        System.out.print("Digame su unidad de medida de Gasolina preferida (1-litros | 2-galones): ");
        int pedidounidades=dato.nextInt();
        if (pedidounidades==1){
            unidades1="galones";
        }
        else{
            unidades1="litros";
        }
        return unidades1;
    }
    public String pedirUnidades(Scanner dato,String unidades1){
        System.out.print("Dime de que quieres establecer unidades (1-velocidad | 2-Gasolina):");
        int opcion=dato.nextInt();
        if (opcion==1){
            unidades=pedirUniadesVelocidad(dato);
        }
        else{
            unidades=pedirUnidadesGasolina(dato);
        }
        return unidades;
    }
    public void setUnidades(String unidades){
        this.unidades=unidades;
    }

    public Integer pedirValorMaximo(Scanner dato){
        System.out.print("Digame el valor máximo a establecer (1-velocidad | 2-Gasolina): ");
        int valorpedido=dato.nextInt();
        if (valorpedido==1){
            System.out.print("Dime la velocidad máxima de tu vehículo en "+unidades+": ");
            Integer valor_maximo1=dato.nextInt();
            valor_maximo=valor_maximo1;
        }
        else{
            System.out.print("Digame la capacidad máxima de tu deposito en "+unidades+": ");
            Integer valor_maximo1=dato.nextInt();
            valor_maximo=valor_maximo1;
        }
        return valor_maximo;
    }
    public void setValorMaximo(Integer valor_maximo){
        this.valor_maximo=valor_maximo;
    }

    public void setValorMinimo(){
        this.valor_minimo=0;
    }
    public void imprimirIndicador(){
        System.out.println("\n Indicador: "+nombre
        +"\n Unidades de medida: "+unidades
        +"\n Valor máximo: "+valor_maximo
        +"\n Valor mínimo: "+valor_minimo);
    }
}


