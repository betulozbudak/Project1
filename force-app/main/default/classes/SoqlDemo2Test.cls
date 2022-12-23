@isTest
public class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
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

        list<contact> listcontact = new list<contact>();
        for(integer i=0; i<300; i++){
            contact cnt =new contact();
            cnt.LastName ='Test SOQL';
            if(i<100){
                cnt.AccountId =acc1.id;
            }else if(i<200){
                cnt.AccountId=acc2.id;
            }else if(i<300){
                cnt.AccountId=acc3.id;
            }
        }
        insert listcontact;
        
    }
    @isTest
    public static void testMethod1(){
        /*Account acc1 = new Account();
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

        list<contact> listcontact = new list<contact>();
        for(integer i=0; i<300; i++){
            contact cnt =new contact();
            cnt.LastName ='Test SOQL';
            if(i<100){
                cnt.AccountId =acc1.id;
            }else if(i<200){
                cnt.AccountId=acc2.id;
            }else if(i<300){
                cnt.AccountId=acc3.id;
            }
        }
        insert listcontact;*/
        Test.startTest();
        SoqlDemo2.soqlchildToParent_1();
        Test.stopTest();
        
    } 
    //test method 2
    public static void testMethod2(){
        list<account> listAcc =[select id,name,]
    }

    //test method 3
}

