public class SoqlDemo {
    public static void accountSOQL_1() {
       list<account> listAccount = [select id, name from account where name like '%a%'];
       system.debug('list of account-->' + listAccount);
    }

    public static void accountSOQL_11() {
        account acc = [select id, name from account order by CreatedDate desc LIMIT 1];
        system.debug('latest account created is ' + acc);
    }

    public static void accountSOQL_2(){
        Account acc = [Select Id, Name, Phone, AccountNumber from Account ORDER BY CreatedDate desc limit 1];
        system.debug('latest account created is ' + acc);

        string accName =acc.Name;
        string accPhone = acc.Phone;
        system.debug('acc name is ' + accName + ' acc phone is ' + accphone + ', account number is ' + acc.Accountnumber);

    }

    public static void accountSOQL_3(){
        List<Account> listAcc = [Select Id, Name, Phone, Accountnumber, ShippingCity from Account ORDER BY CreatedDate desc];

        
        for ( Account eachAcc : listAcc){
            string accName= eachAcc.name;
            string accphone = eachAcc.Phone;
            system.debug('acc name is ' + accName + 'acc phone is '+ accphone + 'account number is ' + eachAcc.AccountNumber);

            string sc= eachAcc.Shippingcity;
        }
    }

    public static void accountSOQL_filter(string    accNameFilter){
        //we want to filter with accNameFilter (string variable) in SOQL
        //to use variable in SOQL we must add ':' (colon) before variable name
        List<account> listAcc = [ select id, name, phone from account where name  = :accNameFilter];
        system.debug('list of accounts-->' + listAcc);
    }

    public static void accountSOQL_filter(List<string> accNames){
        //we want to filter with accNameFilter (string variable) in SOQL
        //to use variable in SOQL we must add ':' (colon) before variable name
        List<account> listAcc = [ select id, name , phone from account where name IN : accNames];
        system.debug('list of accounts-->' + listAcc);
    }
}







