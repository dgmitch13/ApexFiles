public class ContactSearch {
    
    public static List<Contact> searchForContacts(String LastName, String MailPostCode){
        List<Contact> persons = new List<Contact>();
        
        if (LastName != '' && MailPostCode != ''){
            try{
               persons = [select Id, LastName from contact
                          where LastName =:LastName and mailingPostalCode =:MailPostCode];
             
            }catch(DmlException e){
                System.debug('The following exception has occurred: ' + e.getMessage());
             }
     
        }else{
            return null;
        } 
            return persons;       
    }
}