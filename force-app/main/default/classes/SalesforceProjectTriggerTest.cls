@isTest
public class SalesforceProjectTriggerTest {
@isTest
    public static void SalesforceProjectTriggerTest() {
        
        Salesforce_Project__c testProject1= new Salesforce_Project__c();
        testProject1.Project_Name__c ='Test Salesforce Project1';
        
        Salesforce_Ticket__c testTicket1 = new Salesforce_Ticket__c();
        testTicket1.Name ='Test Ticket1';
        testTicket1.Id=testProject1.Id;

        insert testProject1;
        
        testProject1.Description__c='Update';
        update testProject1;
              
    }
}
