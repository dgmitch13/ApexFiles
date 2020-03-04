public class ContactAndLeadSearch {
    
    public static List<List<SObject>> searchContactsAndLeads(String passIt){
       
        String searchquery='FIND \'' + passIt + '\' IN NAME FIELDS RETURNING Contact(FirstName, LastName),Lead(FirstName, LastName)'; 
           List<List<SObject>>searchList=search.query(searchquery);
        
        return searchList;
    }

}