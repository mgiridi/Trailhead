public class MaintenanceRequestHelper {
        public static void beforeUpdate(){  
        List<Case> insertCase = new List<Case>();
        List<Case> caseList = [select id,case.Vehicle__c,Equipment__c,Type,Status  from case where id in :Trigger.New limit 200];
        for(Case c : caseList)
        {
            if((c.status=='closed') && ((c.type == 'Repair') || (c.type == 'Routine Maintenance')))
            {
                Case newCase = new Case();
                newCase.Vehicle__c=c.Vehicle__c;
                newCase.Equipment__c=c.Equipment__c;
                newCase.Status='New';
                newCase.Origin='Phone';
                newCase.type = 'Routine Maintenance';
                newCase.subject = 'Test';
                newCase.Date_Reported__c = date.Today(); 
                insertCase.add(newCase);      
            }     
        }
            insert insertCase;
    }        
}