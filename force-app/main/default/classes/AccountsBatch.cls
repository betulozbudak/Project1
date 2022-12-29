public class AccountsBatch implements Database.Batchable <sObject>, Database.stateful{

    integer count =0;
    integer countRecords=0;

    //get all records with soql query
    public Database.QueryLocator start(Database.BatchableContext bc) {
        //query
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, description,Active__c from account]);
        //return CHUNK of it.
        return q1;
    }

    public void execute(Database.BatchableContext bc, list<account> scope){
        //update records.
        count ++;
        system.debug('execute method start');
        list <account> updateAcc = new list<account>();
        for(account eachacc : scope){
            if(eachacc.Active__c !='No'){
            eachacc.description += '.updated via batch apex';
            updateAcc.add(eachacc);
            countRecords++;
            }
        }
        if(!updateAcc.isEmpty()){
            update updateAcc;
        }
        system.debug('execute method done');
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method called.Enjoy.');
        system.debug(' execute method count:' +count);
        system.debug('number of records ' + countRecords);
    
    }

}

