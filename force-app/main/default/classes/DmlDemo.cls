public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create a new account record using apex code
        Account acc = new account();
        // set field values
        acc.Name = 'SoftInnovas';
        system.debug('before inserted' + acc);
        //dml
        insert acc;//booom
        system.debug('inserted' + acc);
    }
    public static void dmlInsertDemo_cstmObj(){
        //create new instance
        Salesforce_project__c spNew = new 
        Salesforce_project__c();
        // set field values
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c = 'Everybody is doing great. Keep it up';
        //insert dml
        insert spNew;
    }
    public static void dmlUpdateDemo_1(){
        Account acc= new account();
        acc.Name='Soft Innovas';
        insert acc;
        acc.Name = 'Salesforce Inc';
        update acc;
    }
    public static void dmlUpdateDemo_3(){
        account acc = [select name from account where name = 'SoftInnovas' limit 1];
        acc.name = '';
        update acc;
        system.debug('Updated acc' + acc);
    }
    public static void dmlUpdateDemo_4(){
        Account acc = [select id, name from account where name 
        ='GenePoint' limit 1];
        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.id;
        insert cnt;
        system.debug('contact record' + cnt);
    }
    public static void dmlUpdateDemo_5(){
        Salesforce_Project__c sp =[select id, name from Salesforce_Project__c order by CreatedDate desc limit 1];
        Salesforce_Ticket__c stNew = new Salesforce_Ticket__c();
        stNew.Subject__c = 'Learn Apex dmls';
        stNew.Priority__c ='High';
        stNew.Status__c = 'New';
        stNew.Requested_by_date__c = date.newInstance(2022, 12, 5);
        stNew.Salesforce_Project__c = sp.Id;
        insert stNew;
        system.debug('st is ' + stNew);
    }    

    public static void dmlInsertMultiple_right(){
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void dmlInsertMultiple_right2(){
        List<account> listAcc = new list<account>();

        for(Integer i=0; i<155; i++){
            account acc = new account();
            acc.name = 'SoftInnovas v' + i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }

        if(!listAcc.isEmpty()){
            insert listAcc;
        }
    }

    public static void       dmlMultipleRecordUpdate_right(){
        List<account> listAcc=[select id, name from account];
        List<account> updateAccount = new list<account>();
        for(account acc: listAcc){
            if(acc.Active__c=='Yes'){
                acc.name = acc.name + 'via B.0';
                updateAccount.add(acc);
            }
  
        }

           if(!updateAccount.isEmpty()){
                update updateAccount;
           }
    }
}


