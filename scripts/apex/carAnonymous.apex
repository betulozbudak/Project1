//create object of car class
//we also call it INSTANCE of class


//Classname
Car tesla = new car();//
// new instance cretaed,and stored in a variable namde 'tesla'

tesla.carColor='Black';
tesla.carName = 'model S';
tesla.switchOn();
datetime s = tesla.switchOn();
system.debug('tesla==>'+tesla);
system.debug('tesla car color-->'+ tesla.carColor);
system.debug('tesla-->'+ tesla);
tesla.drive();
tesla.driveAtMaxSpeed();

car bmw = new car();
bmw.carName='xyz';
bmw.carColor='white';
bmw.switchOn();
system.debug('bmw car color-->'+bmw.carColor);
system.debug('bmw-->'+ bmw);
bmw.drive();
bmw.driveAtMaxSpeed();

//system.debug('bmw max speed-->'+bmw.maxSpeed);
//it is not work

car toyota= new car();

toyota.switchOn();
toyota.carName = 'corolla';
toyota.drive();



