public class SPTriggerHandler {
    @future
        public static void spUpdateDescription(set<id> setSpId){
            system.debug('future method called.huhuuu');
             List<Salesforce_Project__c> allSP= [select id, description__c from Salesforce_Project__c where id in: setSpId];
             for(Salesforce_Project__c eachSP : allSP){
                eachSP.Description__c += '. Updated from future.';
             }
             update allSP;
        }
}
