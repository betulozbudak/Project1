public class Calculator {
    public void welcomeMessage(){
        //void--> return type
        //()--> parameters.
        system.debug('Welcome to apex calc');
        welcomePrivateMessage();
    }
    
    private void welcomePrivateMessage(){
        system.debug('Welcome to private msg');
    }


    public void printNewMessage(string msg){
        //msg = variable => is used inside the method.
        system.debug(msg);
    }

    public string printAndReturnMessage(string msg){
        string returnString = msg + '...OK cool';
        return returnString;
    }

    public integer add(integer a,integer b){
        integer sum = a + b ;
        return sum;
    }

    public integer add(integer x,integer y,integer z){
        integer sum= x+y+z;
        return sum;
    }

    public boolean leapYearCheck(date dt){
        integer year = dt.year();// use built-in method.
        boolean lp= date.isLeapYear(year);
        return lp;
    }
}

