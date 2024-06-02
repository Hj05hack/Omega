package Theta;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

/**
 *
 * @author 34628
 */
public class Ventanuca3 {

    private JButton etiqueta5;

    public Ventanuca3 {
        JFrame ventana = new JFrame("Mi Ventanuca"); // lo que queremos que se vea
        ventana.setSize(800, 300); //ancho-alto
        ventana.setLocation(400, 300);
        ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        Container contenedor = ventana.getContentPane();
        contenedor.setLayout(new BorderLayout());
        contenedor.setBackground(Color.red);

        JLabel etiqueta = new JLabel("Hola");
        contenedor.add(etiqueta, BorderLayout.NORTH);

        JLabel[] etiquetas = new JLabel[3];
        for (int i = 0; i < etiquetas.length; i++) {
            etiquetas[i] = new JLabel("Etiqueta " + i);
            contenedor.add(etiquetas[i], BorderLayout.CENTER); // Agregando etiquetas de ejemplo
        }

        JButton etiqueta1 = new JButton("Hola soy la etiqueta 1");
        JButton etiqueta2 = new JButton("Hola soy la etiqueta 2");
        JButton etiqueta3 = new JButton("Hola soy la etiqueta 3");
        JButton etiqueta4 = new JButton("Hola soy la etiqueta 4");
        etiqueta5 = new JButton("Hola soy la etiqueta 5");

        contenedor.add(etiqueta1, BorderLayout.SOUTH);
        contenedor.add(etiqueta3, BorderLayout.CENTER);
        contenedor.add(etiqueta4, BorderLayout.EAST);

        JPanel panel = new JPanel(new FlowLayout());
        JPanel panel2 = new JPanel(new GridLayout(3, 1));
        contenedor.add(panel, BorderLayout.NORTH);
        panel.add(etiqueta5);
        contenedor.add(panel2, BorderLayout.WEST);
        panel2.add(etiqueta2);
        panel2.add(etiqueta3);

        JLabel etiqueta05 = new JLabel("sjdflajihdfklajfd");
        etiqueta5.setFont(new Font("Ventana", Font.PLAIN, 20));

        panel.add(etiqueta05);
        panel2.add(etiqueta1);

        panel.setBackground(Color.GREEN);

        String[] opciones = {"Opcion 1", "Opcion 2", "Opcion 3", "Opcion 4"};
        JList listado = new JList(opciones);
        panel.add(listado);

        JComboBox desplegable1 = new JComboBox();
        JComboBox desplegable2 = new JComboBox(opciones);
        panel.add(desplegable1);
        panel.add(desplegable2);

        JOptionPane.showMessageDialog(ventana, "Bienvenido", "Ventanita", JOptionPane.INFORMATION_MESSAGE);
        JOptionPane.showMessageDialog(null, "Mensaje de info", "Info", JOptionPane.INFORMATION_MESSAGE);
        JOptionPane.showMessageDialog(null, "Mensaje de advertencia", "Advertencia", JOptionPane.WARNING_MESSAGE);
        JOptionPane.showMessageDialog(null, "Mensaje de error", "Error", JOptionPane.ERROR_MESSAGE);
        JOptionPane.showMessageDialog(null, "Mensaje de pregunta", "Pregunta", JOptionPane.QUESTION_MESSAGE);
        ImageIcon icono = new ImageIcon(""); //ruta del archivo, no entra en el examen
        JOptionPane.showMessageDialog(null, "Clase de Programacion", "Info", JOptionPane.INFORMATION_MESSAGE);

        etiqueta5.addActionListener(new oyenteBoton());

        ventana.setVisible(true); //para ver la ventana
    }

    public static void main(String[] args) {
        Ventanuca3 v3 = new Ventanuca3();
    }

    class oyenteBoton implements ActionListener {

        @Override
        public void actionPerformed(ActionEvent e) {
            System.out.println("click");
            etiqueta5.setText("Acabas de clickar el boton 5");
        }
    }
}
