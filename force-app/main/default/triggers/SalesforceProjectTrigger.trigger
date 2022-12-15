trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert,after insert) {
    if(trigger.isAfter && Trigger.isInsert){
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);
    }
}
