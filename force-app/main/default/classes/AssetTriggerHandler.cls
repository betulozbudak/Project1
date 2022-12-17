public class AssetTriggerHandler {
    public static void assetHandlerUpdate(list<Asset> assTriggerNew , list<asset> assTriggerOld,map<id,Asset> assTriggerNewMap,map<id,Asset> assTriggerOldMap ) {
        for(Asset eachAsset: assTriggerNew){
            if(eachAsset.Status!= null){
                if(eachAsset.Status=='Shipped'){
                    eachAsset.Description='Asset is shipped';
                }
                if(eachAsset.Status=='Installed'){
                    eachAsset.Description='Asset is installed';
                }
            }
        }
    }
}

