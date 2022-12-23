@isTest
public class DmlDemoTest {
    @isTest
    public static void DmlDemoTest1() {
         DmlDemo.dmlInsertDemo_stndObj();
         //get records and test
         list<account> listAcc = [select id, name from Account where name= 'SoftInnovas'];
         //asserts means actual test.

         system.assertEquals(1,listAcc.size());
         system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
         public static void dmlInsert4Test(){
            Account acc= new account();
            acc.name ='SoftInnovas Inc.';
            insert acc;

            DmlDemo.dmlInsertDemo_4();

            list<contact> listContact =[select id,lastname from contact where lastname ='Biden'];
            system.assertEquals('Biden', listContact[0].LastName);
         }
        
    }

