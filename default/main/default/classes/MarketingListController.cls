public class MarketingListController {
	private integer totalRecs=0;
    private integer OffsetSize=0;
    public integer LimitSize{get; set;} {LimitSize = 1;}
    public MarketingListController(){
        totalRecs = [SELECT Count() FROM Property__c WHERE Include_in_Marketing__c = True];
    }
    
    public List<Property__c> getPropertyList(){
        List<Property__c> prop = Database.Query('SELECT Name, Address__c, Zip_Code__c, Property_Manager__c, Desired_Rent__c, Picture__c, Bedrooms__c, Bathrooms__c ' + 
                                            'FROM Property__c WHERE Include_in_Marketing__c=True ORDER BY Desired_Rent__c DESC LIMIT :LimitSize OFFSET :OffsetSize');
        return prop;
    }
    
    public void FirstPage() {
        OffsetSize = 0;
    }
    
    public void previous() {
        OffsetSize = OffsetSize - LimitSize;
    }
    
    public void next() {
        OffsetSize = OffsetSize + LimitSize;
    }
    
    public void LastPage() {
        OffsetSize = totalrecs - math.mod(totalRecs, LimitSize);
    }
    
    public boolean getprev() {
        if(OffsetSize == 0)
            return true;
        else
            return false;
    }
    
    public boolean getnxt() {
        if((OffsetSize + LimitSize) > totalRecs)
            return true;
        else
            return false;      
    }
     
}