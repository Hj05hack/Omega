/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Evaluacion_2.clases;

import java.util.Scanner;

/**
 *
 * @author IFC
 */
public class Deportista {
    private String nombre;
    private int medallas;
    private String provincia;
    Scanner sc = new Scanner(System.in);

    public Deportista(String nombre, int medallas, String provincia) {
        this.nombre = nombre;
        this.medallas = medallas;
        this.provincia = provincia;
    }

    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String pedirNombre(){
        System.out.println("Dime el nombre del Deportista: ");
        String nombre=sc.next();
        return nombre;
    }
    
    public int getMedallas() {
        return medallas;
    }

    public void setMedallas(int medallas) throws MedallasNegativasException{
        this.medallas = medallas;
        if (medallas < 0) {
            throw new MedallasNegativasException();
        }
    }
    
    public int pedirMedallas() throws MedallasNegativasException{
        System.out.println("Dime el número de Medallas: ");
        int medallas=sc.nextInt();
        if (medallas<0){
            throw new MedallasNegativasException();
        }else{
            return medallas;
        }    
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
    
        public String pedirProvincia(){
        System.out.println("Dime el nombre del Deportista: ");
        String provincia=sc.next();
        return nombre;
    }
        
    public void mostrarDatos(){
        System.out.println("Deportista: " + "nombre" + nombre + ", medallas" + medallas + ", provincia" + provincia);
    }
    
     public Deportista altaDeportista()throws MedallasNegativasException{
        return new Deportista(pedirNombre(),pedirMedallas(),pedirProvincia());
    }
     
    public String provinciaMayuscula(String provincia){
        this.provincia = provincia.toUpperCase();
        return provincia;
    }
    
}
