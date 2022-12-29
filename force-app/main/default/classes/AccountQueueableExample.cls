public class AccountQueueableExample implements Queueable{
    //class variable
    public List<Account> listAcc;

    public AccountQueueableExample(list<account> accounts) {
        listAcc = accounts;//assign parameter
    }

    public void execute(QueueableContext qc){
        for(account eachAcc : listAcc){
            eachAcc.Name += '...SI';
        }
        update listAcc;
    }
}
