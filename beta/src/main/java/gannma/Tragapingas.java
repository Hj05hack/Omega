package gannma;
import java.util.Scanner;
public class Tragapingas {
    Scanner datos=new Scanner(System.in);
    private String color;
    private Integer bolascomidas;
    private Integer maxbolas;
    public Tragapingas(String color,Integer maxbolas){
        this.color=color;
        this.maxbolas=maxbolas;
        this.bolascomidas=0;
    }
    public Tragapingas(){
        System.out.println("Crea tu nuevo tragapingas: ");
        this.color=getColor();
        this.maxbolas=getbolasMáximas();
        this.bolascomidas=0;
    }
    public String getColor(){
        System.out.println("Tenemos estos colores disponibles: ");
        System.out.println(" 1-Azul \n 2-Amarillo \n 3-Rojo \n 4-Verde");
        System.out.print("\nDime el color deseado: ");
        int colorDeseado=datos.nextInt();
        if(colorDeseado==1){
            System.out.println("\nHas elegido el color Azul \n");
            color="azul";
        }else if (colorDeseado==2) {
            System.out.println("\nHas elegido el Color Amarillo \n");
            color="amarillo";
        }else if (colorDeseado ==3) {
            System.out.println("\nHas elegido el Color Rojo \n");
            color = "rojo";
        }else if(colorDeseado==4){
            System.out.println("\nHas elegido el Color Verde \n");
            color="verde";
        }
        else{
            System.out.println("Este color no existe, intentalo de nuevo.");
           color= getColor();
        }
        return color;
    }
    public void setColor(String color){
        this.color=color;
    }

    public Integer getbolasMáximas(){
        System.out.print("¿Cual quieres que sea la capacidad total de tu tragaPingas?(maximo 8): ");
        maxbolas=datos.nextInt();
        System.out.println("La capacidad máxima es de "+maxbolas);
        return maxbolas;
    }
    public void setbolasMaximas(Integer maxbolas){
        this.maxbolas=maxbolas;
    }

    public void comer(){
        if(bolascomidas <maxbolas){
        System.out.println("\nHe comido una bola :D");
        bolascomidas++;
        System.out.println("El numero total de bolas es "+bolascomidas);
        }else{System.out.println("Estoy lleno no puedo comer mas :( ");}
    }
    public void trotar(){
        System.out.println("\nVoy a trotar un poco...");
        if(bolascomidas==0){
            System.out.println("No puedo trotar no tengo energias");
        }else{
            System.out.println("He trotado con fuerza y me siento mejor :D");
            bolascomidas--;
            System.out.println("El numero total de bolas es "+bolascomidas);
        }
    }
    public void dormir(){
        System.out.println("\nVoy a dormir...");
        if(bolascomidas==maxbolas){
            System.out.println("zZzZzZzZzZzZ");
            bolascomidas=bolascomidas/2;
        }else{System.out.println("¡No estoy lleno aun! no puedo dormir D:");}
    }

    public void visualizar(){
        System.out.println("\nEl color es: "+color+"\n Las bolas comidas son: "+bolascomidas+"\n Las bolas máximas son: "+maxbolas);
    }
}