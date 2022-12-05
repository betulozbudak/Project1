public class StudentMarksheet {
    public void showMarksheetUsingDatatype() {

        String firstName = 'Fatma Betul';
        String lastName = 'Ozbudak Celik';
        Integer mathematics = 95;
        Decimal english = 92.2;
        String chemistry = ' A+';

        system.debug(firstName+' '+ lastName +' mathematics mark is '+ mathematics+' ,english mark is '+ english +' and chemistry mark is '+ chemistry);
    }

    public void showMarksheetUsingObject(){

        object firstName= 'Ayse';
        object lastName='Guner';
        object mathematics=75;
        object english='B+';
        object chemistry=75.5;

        system.debug(firstName+' '+lastName +' mathematics mark is '+mathematics+' ,english mark is '+english+' and chemistry mark is '+chemistry);
    }
}







