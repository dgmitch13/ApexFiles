@isTest
private class TestRestrictContactByName {
    
    @isTest static void TestContactbyName(){
      Contact cont = new Contact(Lastname = 'INVALIDNAME');
      Insert cont;  
    
      Test.startTest();
         
      Database.UpsertResult result = Database.upsert(cont);
      Test.startTest();
         
      System.assert(!result.isSuccess());
      System.assert(result.getErrors().size() > 0);   
      System.assertEquals('The Last Name "'+cont.LastName+'" is not allowed for DML', result.getErrors()[0].getMessage());
        
    
    }  
    
    
    
   
}