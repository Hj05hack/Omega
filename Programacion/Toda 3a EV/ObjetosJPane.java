package Theta;
import java.awt.Container;
import javax.swing.JFrame;
import javax.swing.JLabel;
public class ObjetosJPane {
    public static void main(String[] args) {
        JFrame ventana = new JFrame ("Mi Ventanuca"); // lo que queremos que se vea
        ventana.setSize (800,300); //ancho-alto
        ventana.setVisible(true); //para ver la ventana
        ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        Container contenedor = ventana.getContentPane();
        
        JLabel etiqueta = new JLabel("Hola");
        contenedor.add(etiqueta);
    }
}
