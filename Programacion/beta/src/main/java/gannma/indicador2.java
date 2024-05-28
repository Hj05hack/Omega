
package gannma;

public class indicador2 {
    private String nombre;//nos los dan en el uml con el signo menps
    private String unidades;
    private int valorMin;
    private int valorMax;
    private int valorActual;
    

    public indicador2() {          
        
    }
    //va a ser publico
    public indicador2(String nombre, String unidades, int valorMin, int valorMax) {//sobrecarga de constructores, el costructor espera que le des tres parámetros
        //esta es la variable de estado de la clase
        this.nombre = nombre;//y este el valor que le atribuyes
        this.unidades = unidades;
        this.valorMin = valorMin;// en el constructor no determinamos nada por lo que el valor predeterminado sera0
        this.valorMax=valorMax;
        }
        public String getNombre(){        
            return nombre;
        }
    
        public void setNombre (String nombre){//le debes pasar una cadena de caracteres
            //nombre que le das al indicador
            this.nombre= nombre;//nombre que pasas por parametro
        }
        
        public String getUnidades(){
            return unidades;
        }
        public void setUnidades(String unidades){
            this.unidades= unidades;
        }
        
        public int getValorMin(){
            return valorMin;
        }
        public void setValorMin(int valorMin){
            this.valorMin=valorMin;
        }

       public int getValorMax(){
               return valorMax;
        }

        public void setValorMax(int valorMax){
            this.valorMax=valorMax;
        }
        
        public int getValorActual(){
            return valorActual;
        }
        public void setValorActual(int valorActual){
                this.valorActual=valorActual;
        }
        //ademas debes crear 4 metodos: incrementar valor actual,disminuir valor actual, imprimir valor actual e imprimir indicador
        //incrementar valor actual
        public void incrementarValorActual(){
            if (valorActual<valorMax) {
                 valorActual++;
        }
           
        }
        public void disminuirValorActual(){
            if (valorActual>valorMin) {
                valorActual--;
            }
        }
        public void imprimirValorActual(){
            System.out.println("Valor actual: " + valorActual + " " + unidades);
        }
        public void imprimirIndicador(){
            System.out.println("\nNombre: " + nombre + "\n Unidades: " + unidades + "\n Valor Máximo: " + valorMax + "\n Valor mínimo: " + valorMin + "\n Valor actual: " + valorActual);
        }
}
