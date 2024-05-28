package Eta;
import java.util.InputMismatchException;
import java.lang.ArithmeticException;
import java.util.Scanner;
/*Hacer 5 divisiones Correctas */
public class RellenarDenominadorNumerador {
    
    public static void main(String[] args) {
        Scanner numeros=new Scanner(System.in);
        int errores=0;
        int numerador=0;
        int denominador=0;
        int operaciones=0;
        do{
            
            try{
                System.out.println("LLevas "+operaciones+" realizadas");
                System.out.print("Dime el numerador (numero a dividir): ");
                numerador=numeros.nextInt();
                System.out.print("Dime el denominador (partes en dividir): ");
                denominador=numeros.nextInt();
                System.out.println("La solucion es: "+numerador/denominador);
                System.out.println("Has cometido un total de "+errores+" errores");
                operaciones++;
            }catch(ArithmeticException e){
                System.out.println("Es imposible dividir entre 0, vuelve a intentarlo: ");
                numeros.nextLine();
                errores++;
            }catch(InputMismatchException e){
                System.out.println("Has introducido algo que no es un numero entero, vuelve a intentarlo: ");
                numeros.nextLine();
                errores++;
            }
        }while(operaciones<5);
        numeros.close();
    }
}
