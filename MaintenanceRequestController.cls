public class MaintenanceReqeustController {
    public Date PrefDateStart {get;set;}
    public Date PrefDateEnd {get;set;}    
    public List <Maintenance_Request__c> mRList {get;set;}
    public MaintenanceReqeustController() {
        mRList = [SELECT Name, Maintenance_Type__c, Preferred_Date_of_Service__c FROM Maintenance_Request__c GROUP BY Maintenance_Type__c];
    }
    
    public void SearchByDateRange() {

        mRList = [SELECT Name, Maintenance_Type__c, Preferred_Date_of_Service__c FROM Maintenance_Request__c 
                  WHERE Preferred_Date_of_Service__c >= :PrefDateStart AND Preferred_Date_of_Service__c <= :PrefDateEnd GROUP BY Maintenance_Type__c];

    }
}