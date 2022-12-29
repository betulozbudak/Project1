@isTest 
public class AccountsBatchTest {
    @isTest
    private static void testBatch1(){
        //prepare data.
        list<account> listAcc= new List<Account>();

        for(integer i=0; i<900; i++){
            account a = new Account();
            a.Name='Pi account' + i;
            a.Active__c='Yes';
            listAcc.add(a);
        }
        insert listAcc;

        Test.startTest();
        AccountsBatch ab= new AccountsBatch();
        Database.executeBatch(ab,900);
        Test.stopTest();
        

        list<account> getAcc= [select id, description from Account];
        system.assert(getAcc[0].Description.contains('batch') );
    }
}

