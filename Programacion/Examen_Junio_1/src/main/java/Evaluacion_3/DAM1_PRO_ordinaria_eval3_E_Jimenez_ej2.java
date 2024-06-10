package Omega;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import javax.swing.Icon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

public class DAM1_PRO_ordinaria_eval3_E_Jimenez_ej2 {
    public static class ventana{
        JButton PeñaLobera;
        JButton PeñaNegra;
        JButton PicoSM;
        JComboBox Lugares;
        JFrame ventana;
        Container contenedor;
        JPanel panel1;
        JPanel panel2;
        JPanel panel3;
        JLabel titulo;
        JLabel frase;
        String[]lugares={"desde Ágreda","desde La Cueva","desde Beratón"};
        public ventana(){
            ventana=new JFrame();
            ventana.setTitle("Senderos por el Moncayo");
            ventana.setBounds(300,150,600,400);
            ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            contenedor=ventana.getContentPane();
            contenedor.setLayout(new BorderLayout());
            //Panel Superior
            panel1=new JPanel(new FlowLayout());
            titulo=new JLabel("Sendas de Castilla y León");
            titulo.setFont(new Font("Arial",0,30));
            Lugares=new JComboBox(lugares);
            panel1.add(titulo);
            panel1.add(Lugares);
            panel1.setBackground(Color.GREEN);
            contenedor.add(panel1,BorderLayout.NORTH);
            
            //Panel Central
            panel2=new JPanel(new FlowLayout());
            frase=new JLabel("Montaña del Sistemá Ibérico con 2.316 m. de altitud...");
            panel2.add(frase);
            contenedor.add(panel2,BorderLayout.CENTER);
            
            //Panel Inferior
            panel3=new JPanel(new GridLayout(3,1));
            PicoSM=new JButton("Pico de San Miguel 2.316 m.");
            PeñaNegra=new JButton("Peña Negrilla 2.118 m.");
            PeñaLobera=new JButton("Peña Lobera 2.226 m.");
            panel3.add(PicoSM);
            panel3.add(PeñaNegra);
            panel3.add(PeñaLobera);
            contenedor.add(panel3,BorderLayout.SOUTH);
            
            ventana.setVisible(true);
            //PopUp
            JOptionPane.showMessageDialog(ventana, "¡Bienvenido a nuestra alplicacion de montañeros!","Senderos por el Moncayo",1);
        }
    }
    public static void main(String[] args) {
        ventana uno=new ventana();
    }
}
