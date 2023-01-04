Account ac1= new Account();
ac1.Name='ABC TEST';
ac1.Industry='Energy';

Account ac2= new Account();
ac2.Name = 'XYZ TEST';

account ac3= new Account();
account ac4 = new account();

list<account> listAcc= new list<account>{ac1,ac2,ac3,ac4};
list<database.SaveResult> results = Database.insert(listAcc,false);

for(Database.SaveResult eachResult: results){
   if(eachResult.isSuccess()){
    system.debug('inserted successfully record id is ' + eachResult.getId());
   }else{
    system.debug('eroored out.eroors ar' + eachResult.getErrors());
   }
}


