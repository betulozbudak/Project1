public class AccountSchedulable implements Schedulable {
    public void execute(SchedulableContext sc) {
      //any method and any class can be called.
      Database.executeBatch(new AccountsBatch());
    }
}

