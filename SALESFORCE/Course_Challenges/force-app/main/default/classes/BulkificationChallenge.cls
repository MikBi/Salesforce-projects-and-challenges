public class BulkificationChallenge {
   
    public static void updateAvgCaseResolutionDays(List<Id> accountsIds){
        Integer totalDays = 0, totalCases = 0;
        List<Account> accounts = new List<Account>();
        for (Id accId : accountsIds) {
              for(Case caseObj : [SELECT Id, CreatedDate, ClosedDate
                             FROM Case
                             WHERE IsClosed=true
                            	AND AccountId =: accId]){
            
            totalCases++;
            // get duration in days and add it to totalDays
            totalDays += caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date());
            }
            if (totalCases <= 0) continue;
            Decimal resolutionDays = totalDays/totalCases;
            // update account object
            Account acc = [SELECT Id FROM Account WHERE Id = :accId];
            acc.Avg_Case_Resolution_Days__c = resolutionDays;
            accounts.add(acc);
            totalDays = 0;
            totalCases = 0;
        }
    update accounts;
    }

}
