@isTest//class becomes test class.
public class CalculatorTest {
    @isTest//method becomes test methods.

    public static void testMessages(){
       //we want to test our caculator class's methods.
       Calculator2.welcomeMessage();
       Calculator2.printNewMessage('this is from test class');
    }
    @isTest
            
    
    public static void addTest1(){
        integer i=10;
        integer j=15;
        integer sum1=Calculator2.add(i,j);
        system.assertEquals(25, sum1);
    }
    @isTest
            
    
    public static void addTest2(){
        
        integer sum2=Calculator2.add(10,15,25);
        system.assertEquals(50, sum2);
    }
}


