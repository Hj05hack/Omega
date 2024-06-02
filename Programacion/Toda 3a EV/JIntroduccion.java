/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Theta;

import javax.swing.*;
import java.awt.*;

/**
 *
 * @author 34628
 */
public class JIntroduccion {
    public static void main(String[] args) { 
        
        
        
        JFrame ventana = new JFrame ("Mi Ventanuca"); // lo que queremos que se vea
        ventana.setSize (800,300); //ancho-alto
        ventana.setVisible(true); //para ver la ventana
        ventana.setLocation(400,300);
        ventana.setBounds(500,400,600,200);
        ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        
        Container contenedor = ventana.getContentPane();
        JLabel etiqueta = new JLabel("Hola");
        contenedor.add(etiqueta);
        contenedor.setBackground(Color.red);
        contenedor.setLayout(new FlowLayout());
        ventana.setResizable(true);
        
        
        JLabel[] etiquetas = new JLabel[3];
        for (int i = 0; i < etiquetas.length; i++) {
            etiquetas[i] = new JLabel("Etiqueta " + i);
            contenedor.add(etiquetas[i]);
        }
        
        JButton etiqueta1 = new JButton("Hola soy la etiqueta 1");
        JButton etiqueta2 = new JButton("Hola soy la etiqueta 2");
        JButton etiqueta3 = new JButton("Hola soy la etiqueta 3");
        JButton etiqueta4 = new JButton("Hola soy la etiqueta 4");
        JButton etiqueta5 = new JButton("Hola soy la etiqueta 5");
        
        contenedor.setLayout(new BorderLayout());
        //Con esto podremos ver las partes de una pag web
        contenedor.add(etiqueta1, BorderLayout.NORTH);
        //contenedor.add(etiqueta2, BorderLayout.WEST);
        contenedor.add(etiqueta3, BorderLayout.CENTER);
        contenedor.add(etiqueta4, BorderLayout.SOUTH);
        //contenedor.add(etiqueta5, BorderLayout.NORTH);
        
        JPanel panel = new JPanel(new FlowLayout());
        JPanel panel2 = new JPanel(new GridLayout(3,1));
        contenedor.add(panel, BorderLayout.NORTH);
        panel.add(etiqueta5);
        contenedor.add(panel2, BorderLayout.WEST);
        panel2.add(etiqueta2,BorderLayout.EAST);
        panel2.add(etiqueta3,BorderLayout.SOUTH);
        
        
        JLabel etiqueta05 = new JLabel("sjdflajihdfklajfd");
        etiqueta5.setFont(new Font("Ventana",10,20));
        
        panel.add(etiqueta05);
        panel2.add(etiqueta1);
        panel2.add(etiqueta3);
        panel2.add(etiqueta5);
        panel2.add(etiqueta2);
        panel.setBackground(Color.GREEN);
        
        String[] opciones = {"Opcion 1","Opcion 2","Opcion 3","Opcion 4"};
        
        JList listado = new JList(opciones);
        panel.add(listado);
        
        JComboBox desplegable1 = new JComboBox();
        JComboBox desplegable2 = new JComboBox();
        
        for (int i = 0; i < opciones.length; i++) {
            desplegable2.addItem(opciones[i]);
        }
        panel.add(desplegable1);
        panel.add(desplegable2);
    }
}
