public with sharing class PropertyOwnerContactsController {
    public String accName {get;set;}
    
    List<Account> lstacc = new List<Account>();
    List<contact> lstcon = new List<contact>();
    set<string> accIds = new set<string>();
    
    public List<contact> getContacts() {
        lstcon.clear();
        accIds.clear();
        lstacc.clear();      
        lstacc=[select id,name from Account where name=:accName];
        
        for(Integer i=0;i<lstacc.size();i++) {
            accIds.add(lstacc[i].Id);
        }
        
        lstcon =[select id,name,Phone, email,accountId from contact where accountid in : accIds];
        //system.debug('### List of Contacts for Test is ###'+ lstcon);
        return lstcon;
    }
    
    public pagereference showContacts() {
        return null;        
    }
}