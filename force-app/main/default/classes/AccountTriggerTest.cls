@isTest
public class AccountTriggerTest {
    @isTesT
    public static void  testMethod1(){
        Account acc1 = new Account();
        acc1.Name ='SI Test';
        acc1.Industry ='Energy';

        Account acc2 = new Account();
        acc2.Name ='uI Test';
        acc2.Industry ='Energy';

        Account acc3 = new Account();
        acc3.Name ='PI Test';
        acc3.Industry ='Banking';

        list<account> listAcc = new list<account> {acc1,acc2,acc3};
        insert listAcc;

        for(account acc: listAcc){
            acc.Description='Update';
        }
        update listAcc;
    }
    
}
