trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert,before update,after update) {
    /*if(trigger.isAfter && Trigger.isInsert){
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);
    }*/
    if(Trigger.isBefore&& Trigger.isUpdate){
        //call validation
        SalesforceProjectHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}
