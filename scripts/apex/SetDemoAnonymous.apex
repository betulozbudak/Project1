SetDemo.citySet();
Setdemo.randomIntegerSet();

List<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(12);
listInteger.add(18);




system.debug('list-> ' + listInteger);
set<integer> setInt= SetDemo.setFromList(listInteger);
system.debug('set->' + setInt);

set<string> cities = new set<string>{'Tokyo','Lisbon','Nairobi','Berlin','Tokyo','Lisbon','Nairobi','TOKYO'};

set<string> upperCaseSet = SetDemo.capatilazeSet(cities);
system.debug(upperCaseSet);

