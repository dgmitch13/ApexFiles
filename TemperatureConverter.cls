public class TemperatureConverter {

    public static Decimal FahrenheitToCelsius(Decimal fh){
    
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
     
    }
    
    public static String FahrenheitToCelsius2 (Decimal fh2){
       String x = 'Yeah, this is happening!';
        x = x + fh2.toPlainString();
        return x;       
    }
}