public class primitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('Create new date instance');

        Date newDate = Date.newInstance(1995,2,2);

        system.debug('new date is' + newDate);

        Date newDate2 = Date.newInstance(2022,10,10);

        system.debug('new date2 is'+ newDate2);

        Date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);
    }

        public void printNewTime(){

        Time mytime = Time.newInstance(1,1,15,55);
        system.debug('my time is '+ myTime);

        Time metime = Time.newInstance (16,18,45,15);
        system.debug('me time is ' + meTime);

    }

        public void printNewDateTime(){
        
        date newDate =date.today();

        time newTime = time.newInstance(1,1, 15, 55);

        Datetime dt1 = Datetime.newInstance(newDate,newTime);

        system.debug('dt1 is ' + dt1);
             

        Datetime dt2 = Datetime.newInstance(2025,12,21);
        system.debug('dt2 is ' + dt2);    

        
    }

}

