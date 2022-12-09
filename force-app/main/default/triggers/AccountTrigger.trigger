trigger AccountTrigger on Account (before insert, before update) {

    system.debug('Account before insert trigger called.');
    system.debug('Account before update trigger called.');

   /* if(Trigger.isBefore){
        system.debug('account before insert trigger called');
    }
    if(Trigger.isAfter){
        system.debug('account after insert trigger called');
    }*/
    
}



