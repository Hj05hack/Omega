/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Evaluacion_2.gestion;

import Evaluacion_2.clases.Deportista;
import Evaluacion_2.clases.DeportistaElite;
import Evaluacion_2.clases.Entrenador;
import java.util.Scanner;

public class Main {
    Scanner sc=new Scanner(System.in);
    public static void main(String[] args) {
        int numerodeportistas;
        Scanner sc2 = new Scanner(System.in);
        int opcion;
        int comprobante=0;
        int numeroDeportista=0;
        
        System.out.print("Cuantos deportistas quieres añadir: ");
        numerodeportistas=sc2.nextInt();
        
        Deportista[] deportistas = new Deportista[numerodeportistas];
        do {
            System.out.println("Introduce una de estas opciones: ");
            System.out.println("1. Listado Deportistas ");
            System.out.println("2. Listado Entrenadores ");
            System.out.println("3. Listado DeportistasElite ");
            System.out.println("4.Añadir Deportistas ");
            System.out.println("5.Añadir Entrenador ");
            System.out.println("6.Añadir DeportistaElite ");
            System.out.println("0. Salir ");
            opcion = sc2.nextInt();
            switch (opcion) {
                case 1:
                    for (Deportista d : deportistas) {
                        if (d instanceof Deportista) {
                            d.mostrarDatos();
                        }
                    }
                    break;
                case 2:
                    for (Deportista e : deportistas) {
                        if (e instanceof Entrenador) {
                            e.mostrarDatos();
                        }
                    }
                    break;
                case 3:
                    for (Deportista de : deportistas) {
                        if (de instanceof DeportistaElite) {
                            de.mostrarDatos();
                        }
                    }
                    break;
                case 4:
                    
                case 0:
                    System.out.println("Ten buen dia.");
                    break;
                default:
                    System.out.println("Opción no contemplada");
            }
        } while (comprobante==0);          
    }
}
    
