package Omega;
import java.util.Scanner;
import java.util.Iterator;
import java.util.LinkedHashSet;
public class DAM1_PRO_ordinaria_eval3_E_Jimenez_ej1 {
    public static void main(String[] args) {
        LinkedHashSet<String>deportistas=new LinkedHashSet<>();
        Scanner scanner=new Scanner(System.in);
        String nombreIntroducido;
        int longitud;
        int comprobante=0;
        
        System.out.println("¡Bienvendio a nuestra carrera de San Silvestre!\n");
        do{
            System.out.print("Introduzca una persona[Nombre y Apellido]('*' para finalizar): ");
            nombreIntroducido=scanner.nextLine();
            if("*".equals(nombreIntroducido)){
                comprobante++;
            }else{
                deportistas.add(nombreIntroducido);
            }
        }while(comprobante==0);
        longitud=deportistas.size();
        if(longitud==0){
            System.out.println("\nAún no se ha inscrito nadie...¡Le animamaos a participar!");
        }else{
            System.out.println("\nEstas son las "+longitud+" personas que participaran,con su dorsal correspondiente según orden de inscripción: \n");
            for (Iterator<String> iterator = deportistas.iterator(); iterator.hasNext();) {
                for(int i=0;i<longitud;i++){
                    String siguiente = iterator.next();
                    System.out.println("dorsal "+(i+1)+": "+siguiente);
                }
            }
        }   
    }
}
