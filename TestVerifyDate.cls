@isTest
public class TestVerifyDate {

    @isTest static void testCheckDates(){     
         Date cDates = VerifyDate.CheckDates(date.newInstance(2019, 11, 01),date.newInstance(2019, 11, 13));
         system.assertEquals(Date.newInstance(2019,11,13),cDates);  
        }
    @isTest static void testCheckDates2(){     
         Date cDates2 = VerifyDate.CheckDates(date.newInstance(2019, 11, 01),date.newInstance(2019, 12, 01));
         system.assertEquals(Date.newInstance(2019,11,30),cDates2);  
        }
                
}