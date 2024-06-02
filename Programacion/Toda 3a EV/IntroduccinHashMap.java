package Theta;

/**
 *
 * @author HJ
 */
import java.util.HashMap;
public class IntroduccinHashMap {
    public static void main(String[] args) {
        HashMap<Integer,String>beta=new HashMap<>();
        beta.put(1, "Primer Dato");
        beta.put(2,"Segundo Dato");
        beta.put(4,"Cuarto Dato");
        beta.put(3,"Tercer Dato");
        System.out.println(beta.values());
        beta.putIfAbsent(2, "Quinto dato");
        System.out.println(beta.values());
    }
}
