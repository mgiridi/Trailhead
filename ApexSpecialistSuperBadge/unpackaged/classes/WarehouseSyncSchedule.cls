global class WarehouseSyncSchedule implements Schedulable{
    // implement scheduled code here
    global void execute(SchedulableContext sc) {
        //WarehouseCalloutService.runWarehouseEquipmentSync(); 
        //String jobID = System.schedule('My Scheduable', '0 0 1 * * ? *' , new WarehouseSyncSchedule());
        WarehouseCalloutService reminder = new WarehouseCalloutService();
        // Seconds Minutes Hours Day_of_month Month Day_of_week optional_year
        //String sch = '0 0 1 * * ? *';
        //String jobID = System.schedule('Remind Opp Owners', sch, reminder);
    }    
}