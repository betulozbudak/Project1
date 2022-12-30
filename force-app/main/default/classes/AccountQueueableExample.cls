public class AccountQueueableExample implements Queueable{
    //class variable
    public List<Account> listAcc;
    //Constructor
    public AccountQueueableExample(list<account> accounts) {
        listAcc = accounts;//assign parameter
    }

    public void execute(QueueableContext qc){
        for(account eachAcc : listAcc){
            eachAcc.Name += '...SI';
        }
        update listAcc;
    }

    /*public void execute(QueueableContext qc){
        list<account> updateAccs = new list<account>();
        for (account eachAcc : listAcc) {
            account a = new account();
            a.id = eachAcc.id;
            a.Name = eachAcc.Name + ' -- SI';
            updateAccs.add(a);
        }
        update updateAccs;
    } mevcut kuyruga sonradan ilave */
}
