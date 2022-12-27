public class SalesforceProjectHandler {
    public static void createDefaultTicket(list<Salesforce_Project__c> spTriggerNew){
        List<Salesforce_Ticket__c> newList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c eachSP : SpTriggerNew){
            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c ='Default Ticket';
            newST.Salesforce_Project__c=eachSP.Id;
            newList.add(newST);
            if(!newList.isEmpty()){
                insert newList;
            }
        }
    }
    public static void completeSPvalidation(list<Salesforce_Project__c> spTriggerNew,list<Salesforce_Project__c> spTriggerOld,map<id,Salesforce_Project__c> spTriggerNewMap,map<id,Salesforce_Project__c> spTriggerOldMap){
        set<id> spCompletedIds = new set<id>();
        for(Salesforce_Project__c eachSP : spTriggerNew){
            if(eachSP.Status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c){
                spCompletedIds.add(eachSP.id);
            }
        }

        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from salesforce_ticket__c where Salesforce_Project__c in : spCompletedIds and status__c !='Completed'];

        for (Salesforce_Ticket__c eachSt: listST){
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachSt.Salesforce_Project__c);
            spNew.addError('Cannot complete project because all tickets are not completed.Go away');
            }
        }
    }

