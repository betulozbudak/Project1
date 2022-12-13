public class ContactTriggerHandler {
    public static void contactUpdateValidation1(list<contact> conTriggerNew, list<contact> conTriggerOld,map<id,contact> conTriggerNewMap,map<id,contact> conTriggerOldMap) {
         for(contact eachContact : conTriggerNew){
            contact oldContact =conTriggerOldMap.get(eachContact.Id);
            if(oldContact.LeadSource=='Partner Referral'){
                eachContact.addError('Cannot update Partner Referral contact');
            }
         }
    }
}
