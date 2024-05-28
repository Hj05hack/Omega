package gannma;
import java.util.Arrays;
public class Beta_1 {

    public static int[] generadorMatriz() {
        int[] vector=new int[10];
        for (int i = 0; i < vector.length; i++) {
            vector[i]=(int)(Math.random()*100);
        }
        return vector;
    }

    public static int CalculoSuma(){
        int[]vector=generadorMatriz();
        int suma=0;
        for (int i=0;i<vector.length;i++){
            suma+=vector[i];
        }
        return suma;
    }

    public static int[] generadorMatriz(int n){
        int[] vector=new int[n];
        for (int i = 0; i < vector.length; i++) {
            vector[i]=(int)(Math.random()*100);
        }
        return vector;
    }
    public static void main(String[] args) {
        int[] vector=generadorMatriz();
        int sumafinal=CalculoSuma();
        System.out.println(Arrays.toString(vector));
        System.out.println("La suma de todos los números es de "+sumafinal);
    }
}
