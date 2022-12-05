public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription='learning string methods in apex language';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug ('length of session description is'+ lengthOfStr);

        string capsessionDescription= sessionDescription.toUpperCase();
        system.debug('in CAPS-->'+capSessionDescription);
        
        boolean apexContains = sessionDescription.contains('apex');
        system.debug('contains apex? ' + apexContains);

        boolean salesforceContains = sessionDescription.contains ('salesforce');
        system.debug('contains salesforce?'+ salesforceContains);

        boolean apexContains3 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contains ignore case Apex ?'+ apexContains3);
         
        string rating=' Hot ';
        rating=rating.trim();
        boolean checkhot=rating.equals('Hot');
        

    }
}

