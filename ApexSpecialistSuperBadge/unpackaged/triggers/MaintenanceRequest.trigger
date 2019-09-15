trigger MaintenanceRequest on Case (before update, after update) {
    // call MaintenanceRequestHelper.updateWorkOrders  

    MaintenanceRequestHelper.beforeUpdate();
    if (trigger.isBefore)
    {
       // if (trigger.isUpdate) handle.beforeUpdate();
    }
    if (trigger.isAfter)
    {
       // if (trigger.isUpdate) handle.afterUpdate();
    }

}