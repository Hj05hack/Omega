/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Evaluacion_2.clases;

/**
 *
 * @author IFC
 */
public class DeportistaElite extends Deportista{
    private String patrocinador;

    public DeportistaElite(String patrocinador, String nombre, int medallas, String provincia) {
        super(nombre, medallas, provincia);
        this.patrocinador = patrocinador;
    }

    public String getPatrocinador() {
        return patrocinador;
    }

    public void setPatrocinador(String patrocinador) {
        this.patrocinador = patrocinador;
    }
    
    @Override
    public void mostrarDatos(){
        super.mostrarDatos();
        System.out.println(", Patrocinador: " + patrocinador);
    }
    public void altaDeportistaElite() throws MedallasNegativasException{
        System.out.println("Introduzca el nombre del Deportista de Elite: ");
        super.setNombre(sc.nextLine());
        System.out.println("Introduzca las medallas del Deportista de Elite: ");
        super.setMedallas(sc.nextInt());
        System.out.println("Introduzca la provincia del Deportista de Elite: ");
        super.setProvincia(sc.nextLine());
        System.out.println("Introduzca el patrocinador del Deportista de Elite: ");
        setPatrocinador(sc.next());
    }
    
}
