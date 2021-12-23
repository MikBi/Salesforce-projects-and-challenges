public class DMLChallenge {
    
    public static void challenge() {
        
        Account account = new Account(Name='WingNut Films', Rating='Warm');
        insert account;
        System.debug(account);
        Opportunity opportunity = new Opportunity(Name='Lord of the rings',StageName='Qualification',CloseDate=Date.today(),AccountId=account.Id);
        System.debug(opportunity);
        insert opportunity;
        account.Name = 'New Line Cinema';
        System.debug(account);
        update account;
        opportunity.StageName = 'Closed-Won';
        System.debug(opportunity);
        update opportunity;
        delete opportunity;
        undelete opportunity;
        System.debug(opportunity);

    }

}
