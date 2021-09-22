public class MaintenanceVendorController {
	private String sortOrder = 'FirstName';
    private String sortOrder2 = 'Name';
    private String level = 'Primary';
    private String specialty = 'Plumbing';
    
    
 /*   Public List<Contact> getContacts(){
        List<Contact> results = Database.query(
        'SELECT Id, FirstName, LastName, Title, Email, Level__c ' +
        'FROM Contact ' +
        'WHERE Level__c = :level ' +
        'ORDER BY ' + sortOrder + ' ASC ' +
		'LIMIT 8'
        );
        return results;
    }*/
    
    
    Public List<Vendor__c> getVendors(){
        List<Vendor__c> results = Database.query(
		'SELECT Id, Name, Branch__c, Email__c, Primary_phone__c, Specialty__c ' +
        'FROM Vendor__c '+
		'WHERE specialty__c = :specialty ' +
		'ORDER BY ' + sortOrder2 + ' ASC ' +
        'LIMIT 8'
        );
        return results;
    }
    
    public void sortByLastName(){
        this.sortOrder = 'LastName';
    }
    
    public void sortByFirstName(){
        this.sortOrder = 'FirstName';
    }
    
    
    
    
    
    public void sortByName(){
        this.sortOrder2 = 'Name';
    }
    
    public void sortByBranch(){
        this.sortOrder2 = 'branch__c';
    }
    
    //This will be for each Specialty
    
    public void viewPrimary(){
        this.level = 'Primary';
    }
    
    public void viewSecondary(){
        this.level = 'Secondary';
    }
    
 
    public void viewCleaning(){
        this.specialty = 'Cleaning';
    }
    public void viewElectrical(){
        this.specialty = 'Electrical Work';
    }
    public void viewExterior(){
        this.specialty = 'Exterior Work';
    }
    public void viewFlooring(){
        this.specialty = 'Flooring';
    }
    public void viewHVAC(){
        this.specialty = 'HVAC';
    }
    public void viewLandscaping(){
        this.specialty = 'Landscaping';
    }
    public void viewPaint(){
        this.specialty = 'Paint';
    }
    public void viewPlumbing(){
        this.specialty = 'Plumbing';
    }
    public void viewRoofing(){
        this.specialty = 'Roofing';
    }
    
    
}