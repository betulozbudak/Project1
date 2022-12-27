@isTest
public class SalesforceProjectTriggerHandlerTest {
    @isTest 
       public static void testmethod1(){
        Salesforce_Project__c testProject1 = new Salesforce_Project__c();
        testProject1.Project_Name__c='Project1';
        Salesforce_Ticket__c testTicket1 = new Salesforce_Ticket__c();
        testProject1.Id =testTicket1.Id;
        List<Salesforce_Project__c> listProject= new List<Salesforce_Project__c>{testProject1};
        insert listProject;
                  
        test.startTest();
            SalesforceProjectHandler.createDefaultTicket(listProject);
        test.stopTest();
            List<Salesforce_Ticket__c> listTicket = [select Id,Subject__c from Salesforce_Ticket__c where Subject__c='Default Ticket'];
            system.assertEquals('Default Ticket', listTicket[0].Subject__c);
    }
    @isTest
    public static void testmethod2(){
        test.startTest();
        list<Salesforce_Project__c> listPro= new List<Salesforce_Project__c>();
        Salesforce_Project__c Project1 = new Salesforce_Project__c();
        Project1.Project_Name__c='Project1';
        Project1.Status__c='New';
        Salesforce_Ticket__c Ticket1 = new Salesforce_Ticket__c();
        Ticket1.Status__c='Testing';
        Project1.Id = Ticket1.Id;
        listPro.add(Project1);
        insert listPro;
        Map<Id,Salesforce_Project__c> newMap = new Map<Id,Salesforce_Project__c>();
        newMap.put(Project1.Id,Project1);
        listPro.get(0).Status__c='Completed';
        update listPro;         
        SalesforceProjectHandler.completeSPvalidation(listPro,listPro,newMap,newMap);
        test.stopTest();
        list<Salesforce_Project__c> listP =[select Id, Project_Name__c, Status__c from Salesforce_Project__c where Status__c ='New'];
        system.assertEquals(1,listP.size());

}
}




