@isTest
private class LHMarketingListControllerTest {
    @isTest
    static void getPropertyList() {
        // Test Data Creation
        Property__c p = new Property__c();
        p.Name = '123 Main';
        p.Address__c = '123 Main St';
        p.Bedrooms__c = 3;
		p.Bathrooms__c = 2;
		p.Desired_Rent__c = 1200;
        p.Zip_Code__c = '12345';
        p.Include_in_Marketing__c = True;
		string numberBathrooms = '1';
   		string numberBedrooms = '2';
    	string rentFilter = '1299';
        
        LHMarketingListController testMarkCon = new LHMarketingListController();

        Test.startTest();
        insert p;
        List<Property__c> prop = testMarkCon.getPropertyList();
        Test.stopTest();

        // Assertions
        System.assertEquals(1, prop.size(), 'One property was expected.');
        System.assertEquals(
            '123 Main',
            prop[0].Name,
            'The Name is incorrect.'
        );
        System.assertEquals(
            '123 Main St',
             prop[0].Address__c,
            'The Address is incorrect.'
        );
        System.assertEquals(
             1200,
             prop[0].Desired_Rent__c,
            'The rent is incorrect.'
        );
        System.assertEquals(
            3,
            prop[0].Bedrooms__c,
            'The number of bedrooms is incorrect.'
        );
		System.assertEquals(
            2,
            prop[0].Bathrooms__c,
            'The number of bathrooms is incorrect.'
        );
    }
    /*@isTest
    static void previous() {
        
    }
    @isTest
    static void next() {
        
    }*/
    @isTest
    static void getDisabledPrevTestPositive() {
        Property__c p = new Property__c();
        p.Name = '123 Main';
        p.Address__c = '123 Main St';
        p.Bedrooms__c = 3;
		p.Bathrooms__c = 2;
		p.Desired_Rent__c = 1200;
        p.Zip_Code__c = '12345';
        p.Include_in_Marketing__c = True;
		string numberBathrooms = '1';
   		string numberBedrooms = '2';
    	string rentFilter = '1299';
        
        LHMarketingListController testMarkCon = new LHMarketingListController();

        Test.startTest();
        insert p;
        boolean testbool = testMarkCon.getDisabledPrev();
        Test.stopTest();
        
        System.assert(testbool, 'Expected true');
    }
    
    @isTest
    static void getDisabledNextTestPositive() {
		Property__c p = new Property__c();
        p.Name = '123 Main';
        p.Address__c = '123 Main St';
        p.Bedrooms__c = 3;
		p.Bathrooms__c = 2;
		p.Desired_Rent__c = 1200;
        p.Zip_Code__c = '12345';
        p.Include_in_Marketing__c = True;
		string numberBathrooms = '1';
   		string numberBedrooms = '2';
    	string rentFilter = '1299';
        
        LHMarketingListController testMarkCon = new LHMarketingListController();

        Test.startTest();
        insert p;
        boolean testbool = testMarkCon.getDisabledNext();
        Test.stopTest();
        
        System.assert(testbool, 'Expected true');
    }
}