public class ContactTriggerHandler {
    
    public static void contactUpdateValidation1(list<contact> conTriggerNew, list<contact> conTriggerOld,map<id,contact> conTriggerNewMap,map<id,contact> conTriggerOldMap) {
         //Validation
         for(contact eachContact : conTriggerNew){
            contact oldContact =conTriggerOldMap.get(eachContact.Id);
            if(oldContact.LeadSource=='Partner Referral'){
                eachContact.addError('Cannot update Partner Referral contact');
            }
         }
    }
    public static void contactUpdateValidation2(list<contact> cntTriggerNew,list<contact> cntTriggerOld, Map<id, contact> cntTriggerNewMap,Map<id,contact> cntTriggerOldMap){
        for(contact eachContact : cntTriggerNew){
            contact oldContact = cntTriggerOldMap.get(eachContact.Id);
            if(eachContact.LeadSource != oldContact.LeadSource){
                string customError = system.label.ContactValidation2;
                eachContact.LeadSource.addError(customError);
            }
        }
    }
    
}
