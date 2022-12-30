@isTest
public class AccountQueueableExampleTest {
    @isTest
public static void testQueueable(){

    list<account> listAcc= new List<Account>();

        for(integer i=0; i<900; i++){
            account a = new Account();
            a.Name='Pi account' + i;
            a.Active__c='Yes';
            listAcc.add(a);
        }
        insert listAcc;

        test.startTest();
        system.enqueueJob(new AccountQueueableExample (listAcc));
        test.stopTest();
        list<account> getAccounts =[select id, name from Account];
        system.assert(getAccounts[0].Name.contains('SI'));
    }
}

