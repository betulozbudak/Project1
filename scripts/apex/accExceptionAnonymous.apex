//calismaz.(required field)
Account ac= new account();
insert ac;
system.debug('Apex is Sample');//yazmaz.cunku 2.satirda error var.o satira geri doner. devam etmez.

try{
    Account ac= new account();
insert ac;

}catch(DmlException dex){
    system.debug('DML went wrong');



}catch(Exception ex){
    system.debug('Something went wrong buddy');
}

system.debug('Apex is REALLY SIMPLE');


//daima buyuk exception kucuk exceptiondan sonra yazilmali.

try{
    Account ac = new account();
    insert ac; //error. so it goes back from this line.
} catch(exception ex){
    system.debug('something went wrong buddy');
    system.debug('ex -> ' + ex.getMessage());
    system.debug('ex line number : '+ ex.getLineNumber());
}


system.debug('Apex is SIMPLE');