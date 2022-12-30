public class ContactsBatch implements Database.Batchable <sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1= Database.getQueryLocator([select id,LastName,Description from contact]);
        return q1;
    }

    public void execute(Database.BatchableContext bc,list<contact> scope){
        list<contact> upCon= new List<Contact>();
        for(contact eachcon: scope){
            eachcon.Description='.Updated by Batch';
            upCon.add(eachcon);
        }
        update upCon;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('Batch over');
    }
}
