public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>{'Tokyo','Lisbon','Berlin','Nairobi','Berlin','Tokyo','Lisbon','Nairobi','TOKYO'};

        system.debug('cities here' + cities);
    }

    public static void randomIntegerSet(){
        set<integer> setInt = new Set<Integer>{15,10,21,15,15};
        system.debug(setInt);
    }

    public static set<integer> setFromList(list<integer> intList){
        set<integer> returnSet = new set<integer>();
        returnSet.addAll(intList);
        return returnSet;
    }

    public static set<string> capatilazeSet(set<string> setStr){
        set<string> returnSet = new set< string> ();
        // iterate over each element of set
        //convert each element to uppercase
        //add in a newly created set
        for( string eachString: setStr){
            //each element one by one from the SET
            string tempstring= eachString.toUpperCase();
            returnSet.add(tempstring);
        }
        return returnSet;
    }
}

