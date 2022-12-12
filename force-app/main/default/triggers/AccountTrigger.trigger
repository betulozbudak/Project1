trigger AccountTrigger on Account (before insert, before update, after insert, after update) {


/*    list<account> accTriggerNew = trigger.new;

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
    
    /*trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

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
        
        if(trigger.isAfter && trigger.isUpdate){
            system.debug('newly updated record=>'+ trigger.new);
            system.debug('newly updated accounts size=>' + accTriggerNew.size());
        }
    
        for(account eachacc : accTriggerNew){
            system.debug('each acc id is'+ eachacc.id + 'each acc name is' + eachacc.Name);
        }
    
    */

    /*if(trigger.isBefore && trigger.isInsert){
        system.debug('Account is before insert triggger.old'  + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('account after inset trigger.old' + trigger.old);
    }*/
    /* if(trigger.isBefore && trigger.isInsert){
        system.debug('Account is before insert triggger.old'  + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('account after inset trigger.old' + trigger.old);
    }
        if(trigger.isBefore && trigger.isUpdate){
            system.debug('Account is before update triggger.old'  + trigger.old);
        }
        if(trigger.isAfter && trigger.isUpdate){
            system.debug('account after update trigger.old' + trigger.old);    
   

}   */

    /*if(trigger.isBefore && trigger.isUpdate){
        list<account> accTriggerOld = trigger.old;
        for(account oldAcc : trigger.old){
            system.debug('Old acc id =' + oldAcc.id + ', Old accname= ' + oldAcc.Name);
        }
        list<account> accTriggerNew = trigger.new;
        for(account newAcc: trigger.new){
            system.debug('New acc id= ' + newAcc.id + ', New accname= '+ newAcc.Name);
        }
    }*/

    /*if(trigger.isAfter){
        list<account> accTriggerNew = trigger.new;
        set<id> setIds = new set<id> ();
        for(account newAcc : accTriggerNew){
            id accId = newAcc.id;
            setids.add(accId);
        }
        system.debug(setids);
    }
    */
    /*List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    

    if(trigger.isBefore && trigger.isInsert){
    System.debug('before insert trigger.old -->' + accTriggerOld);
    System.debug('before insert trigger.New -->' + accTriggerNew);
    system.debug('Before insert old map ==> '+accTriggerOldMap);
    system.debug('Before insert New map ==> '+accTriggerNewMap);
    }

    if(trigger.isAfter && trigger.isInsert){
        System.debug('After insert trigger.old -->' + accTriggerOld);
        System.debug('After insert trigger.New -->' + accTriggerNew);
        system.debug('After insert old map ==> '+accTriggerOldMap);
        system.debug('After insert New map ==> '+accTriggerNewMap);
    }

    if(trigger.isBefore && trigger.isUpdate){
        System.debug('Update insert trigger.old -->' + accTriggerOld);
        System.debug('Update insert trigger.New -->' + accTriggerNew);
        system.debug('Before update old map ==> '+accTriggerOldMap);
        system.debug('Before update New map ==> '+accTriggerNewMap);
    }

    if(trigger.isAfter && trigger.isUpdate){
        System.debug('Update insert trigger.old -->' + accTriggerOld);
        System.debug('Update insert trigger.New -->' + accTriggerNew);
        system.debug('After update old map ==> '+accTriggerOldMap);
        system.debug('After update New map ==> '+accTriggerNewMap);
    }
    */
    
    /*List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
    if(trigger.isAfter&& trigger.isUpdate){
        set<id> accountIds= accTriggerNewMap.keyset();
        for(id eachId : accountIds){
            //get new account value from new map
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('new Acc name is' + newAcc.Name);
            //get old account value from old map
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('old Acc name is' + oldAcc.Name);
        }
    }*/

    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
        }
        system.debug('count website' + countwebsite);
} 
}   
    
    




    




