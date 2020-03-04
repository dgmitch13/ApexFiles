public class StringArrayTest {
    
    public static List<String> generateStringArray(integer x){
		List<String> n = new List<String>();
        String wordy = 'Test ';
        
		for(integer i = 0; i < x; i++){
    		n.add(wordy + i);
		}
       
        return n;
    }
    
}