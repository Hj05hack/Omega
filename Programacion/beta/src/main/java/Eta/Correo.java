package Eta;
import java.io.EOFException;
import javax.swing.JOptionPane;
public class Correo {
    public static void main(String[] args) {
        String correo=JOptionPane.showInputDialog("Introduzca su correo: ");
        try{
        comprobarCorreo(correo);
        }catch (Exception e){
            System.out.println("EXCEPCION");
        }
        System.out.println("Final del Código Inicial");
    }
    public static void comprobarCorreo(String correo) throws EOFException{
        int arroba=0;
        boolean punto=false;
        for(int i=0;i<correo.length();i++){
            if(correo.charAt(i)=='@')
                arroba++;
            if(correo.charAt(i)=='.')
                punto=true;
        }
        if (arroba==1 && punto && correo.length() >5){
            System.out.println("Es correcto ");
        }else{
            System.out.println("No es correcto ");
            throw new EOFException();
        }
    }
}
