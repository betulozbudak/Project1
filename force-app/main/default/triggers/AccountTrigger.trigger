/*trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    list<account> accTriggerNew = trigger.new;

    if(trigger.isBefore && trigger.isInsert){
        system.debug('BEFORE INSERT new record' + accTriggerNew);
        system.debug('BEFORE INSERT new record'+ accTriggerNew.size());
    }

    for( account eachAcc : accTriggerNew){
        system.debug('BEFORE each acc id is' + eachAcc.Id + 'each acc name is' + eachAcc.Name);
    }
    /*if(trigger.isAfter){
        system.debug('newly inserted record=>'+ trigger.new);
        system.debug('newly inserted accounts size=>' + accTriggerNew.size());
    }
    
    if(trigger.isAfter && trigger.isInsert){
        system.debug('newly inserted record=>'+ trigger.new);
        system.debug('newly inserted accounts size=>' + accTriggerNew.size());
    }

    for(account eachacc : accTriggerNew){
        system.debug('each acc id is'+ eachacc.id + 'each acc name is' + eachacc.Name);
    }
    //insert
        if (trigger.isInsert && trigger.isAfter) {
        system.debug('account after insert trigger called');
    }

    if (trigger.isInsert && trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    
    //update
    if (trigger.isUpdate && Trigger.isBefore) {
        system.debug('account Before UPDATE trigger called');
    }
    if (trigger.isUpdate && Trigger.isAfter) {
        system.debug('account after UPDATE trigger called');
    }
    
    
    /*
    //before insert
    if (Trigger.isInsert) {
        system.debug('account before INSERT trigger called.'); //when will this code run?
    }
    if (Trigger.isUpdate) {
        system.debug('account before UPDATE trigger called.');
    }
     */

    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */
    
    trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

        list<account> accTriggerNew = trigger.new;
    
        if(trigger.isBefore && trigger.isUpdate){
            system.debug('BEFORE UPDATE new record' + accTriggerNew);
            system.debug('BEFORE UPDATE new record'+ accTriggerNew.size());
        }
    
        for( account eachAcc : accTriggerNew){
            system.debug('BEFORE each acc id is' + eachAcc.Id + 'each acc name is' + eachAcc.Name);
        }
        /*if(trigger.isAfter){
            system.debug('newly inserted record=>'+ trigger.new);
            system.debug('newly inserted accounts size=>' + accTriggerNew.size());
        }
        */
        if(trigger.isAfter && trigger.isUpdate){
            system.debug('newly updated record=>'+ trigger.new);
            system.debug('newly updated accounts size=>' + accTriggerNew.size());
        }
    
        for(account eachacc : accTriggerNew){
            system.debug('each acc id is'+ eachacc.id + 'each acc name is' + eachacc.Name);
        }
    
}    
    
    
    
    
    




    




