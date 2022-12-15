public class SalesforceProjectHandler {
    public static void createDefaultTicket(list<Salesforce_Project__c> ProTriggerNew){
        List<Salesforce_Ticket__c> newList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c eachSP : ProTriggerNew){
            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c ='Default Ticket';
            newST.Salesforce_Project__c=eachSP.Id;
            newList.add(newST);
            if(!newList.isEmpty()){
                insert newList;
            }
        }
    }
}
