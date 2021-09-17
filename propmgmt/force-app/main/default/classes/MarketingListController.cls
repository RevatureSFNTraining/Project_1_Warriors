public class MarketingListController {
	private integer totalRecs=0;
    private integer OffsetSize=0;
    public integer LimitSize{get; set;} {LimitSize = 1;}
    public decimal numberBathrooms{get; set;}
    public integer numberBedrooms{get; set;}
    public integer rentFilter{get; set;}
    
    public MarketingListController(){
        totalRecs = [SELECT Count() FROM Property__c WHERE Include_in_Marketing__c = True];
    }
    
    public List<Property__c> getPropertyList(){
        List<Property__c> prop = Database.Query('SELECT Name, Address__c, Zip_Code__c, Property_Manager__c, Desired_Rent__c, Picture__c, Bedrooms__c, Bathrooms__c ' + 
                                            'FROM Property__c WHERE Include_in_Marketing__c=True ORDER BY Desired_Rent__c DESC LIMIT 1 OFFSET :OffsetSize');
        return prop;
    }
    
    public void previous() {
        OffsetSize = OffsetSize - 1;
    }
    
    public void next() {
        OffsetSize = OffsetSize + 1;
    }
    
    public boolean getdisabledPrev() {
		 if(OffsetSize>0)
             return false;
         else 
             return true;
    }
    
    public boolean getdisabledNext() {
        if(OffsetSize + 1 < totalRecs)
            return false;
        else
            return true;      
    }

}