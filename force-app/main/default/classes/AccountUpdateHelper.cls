public class AccountUpdateHelper {
    @invocableMethod//invocable method we can call from process builder or flows
    public static void accountWebsiteUpdate(list<id> accIds) {
        system.debug('inside invocable method');
        list<account> listAcc = [select id, website, name from account where id in : accIds];
        for(Account eachAcc : listAcc){
            //update website
            eachAcc.website='wwww.softinnovas.com';
        }
        //update dml
        update listAcc;
    }
}

