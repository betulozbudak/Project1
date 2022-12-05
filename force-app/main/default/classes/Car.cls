//created a class
public class Car {
    //public class variable
    public string carColor= '';
    public string carName= '';
    private integer maxSpeed= 150;

    //create a method
    public datetime switchOn(){
        //This is method body.
        datetime switchOntime = datetime.now();
        system.debug('starting the car'+ switchOntime);
        return switchOntime;
        
    }

    public void drive(){
        system.debug('driving ' + carName + ' of color ' + carColor);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription ='Driving'+ carName + ' at ' + maxSpeed + ' km/hr';
        system.debug(drivingDescription);
    }
}

//SAVE CLASS.
//right click. sfdx deploy

//class, we deploy
//anonymus apex,we execute.

//deploy=upload





