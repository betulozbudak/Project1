//class
public class PrimitiveDataTypeDemo {
    //method
    public void printBasicDataType(){
       system.debug('print data types');
       string batchName='Batch 11';
       integer totalCandidates= 80;
       boolean isAdminCompleted= true;

       system.debug('batch name is '+ batchName);
       system.debug('total candidates are '+ totalCandidates);
       system.debug('is admin copmleted? '+ isAdminCompleted);

       string batchDescription = batchName + ' is the best.';
       system.debug(batchDescription);

       Decimal decValue= 27.01;
       system.debug('Decimal: ' + decValue);

       Long longValue= 2147483648L;
       system.debug('Long value is ' + longValue );

    }

    public void printBasicDataType2(){
       Object ob1 = 'assigning string  to object.allowed?';
       Object ob2 = 5000;
       Object ob3 = false;
     
       system.debug(ob1);
       system.debug(ob2);
       system.debug(ob3);

       ID accountId ='001Do000003CQy2IAG';
       system.debug('id -->' + accountId);
    }
}

