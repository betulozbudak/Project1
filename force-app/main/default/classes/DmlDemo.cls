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
        Salesforce_project__c spNew = new Salesforce_project__c();
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
}
