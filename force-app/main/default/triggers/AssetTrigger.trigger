trigger AssetTrigger on asset (before insert,before update) {
    if(Trigger.isBefore&&Trigger.isInsert){
        AssetTriggerHandler.assetHandlerUpdate(trigger.new,trigger.old, trigger.newMap,trigger.oldMap);
    }
    if(Trigger.isBefore&&Trigger.isUpdate){
        AssetTriggerHandler.assetHandlerUpdate(trigger.new,trigger.old, trigger.newMap,trigger.oldMap);
    }
}