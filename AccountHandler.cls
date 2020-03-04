public class AccountHandler {
	
    public static Account insertNewAccount(String dAcctName){
            Account nAcct = new Account();
       
        if(dAcctName != ''){
            try {
                    nAcct.name = dAcctName;
                    insert nAcct;
                
            } catch (DmlException e) {
                System.debug('A DML exception has occurred: ' +
                        e.getMessage());
            } 
        }else{
            return null;
        }  
        
        return nAcct;
    }
}