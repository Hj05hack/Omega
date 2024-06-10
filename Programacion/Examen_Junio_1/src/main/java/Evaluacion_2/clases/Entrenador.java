/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Evaluacion_2.clases;

import Evaluacion_2.gestion.InterfaceEntrenadorEspecial;

/**
 *
 * @author IFC
 */
public class Entrenador extends Deportista implements InterfaceEntrenadorEspecial{
    private double sueldo;

    public Entrenador(double sueldo, String nombre, int medallas, String provincia) {
        super(nombre, medallas, provincia);
        this.sueldo = sueldo;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }
    @Override
    public void mostrarDatos(){
        super.mostrarDatos();
        System.out.println(", Sueldo: " + sueldo);
    }
    public void altaEntrenador() throws MedallasNegativasException{
        System.out.println("Introduzca el nombre del Entrenador: ");
        super.setNombre(sc.nextLine());
        System.out.println("Introduzca las medallas del Entrenador: ");
        super.setMedallas(sc.nextInt());
        System.out.println("Introduzca la provincia del Entrenador: ");
        super.setProvincia(sc.nextLine());
        System.out.println("Introduzca el sueldo del Entrenador: ");
        setSueldo(sc.nextInt());
        hacerCursoEntrenadorEspecial();
    }

    @Override
    public void hacerCursoEntrenadorEspecial() {
        System.out.println("Tienes que hacer un curso el dia 30 para ser entrenador Especial.");
    }
}
