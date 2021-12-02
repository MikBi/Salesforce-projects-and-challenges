public class FindEgde {

    public String choose { get; set; }

public List<Account> acc = [Select Name,BillingStreet from Account where Name = 'Edge Communications'];

public List<Opportunity> opp = [Select Id,Name from Opportunity];    
   
    public List<Account> getAcc() {
        return acc;
    }
    
    public List<SelectOption> getOppList() {

      List<SelectOption> listopp = new List<SelectOption>(); 
        
        for (opportunity p : opp) {
            listopp.add(new SelectOption(p.Id,p.Name));
        }
        return listopp;
    }
    
    
        public PageReference updateOpp() {
        
        Account a = new Account(Name='Wavy Apps');
        Opportunity o = new Opportunity();
          o = [Select Name,Type,LeadSource,Amount,ExpectedRevenue,CloseDate,StageName,Probability from Opportunity where Id = :choose LIMIT 1];
       Opportunity op = o.clone(false,true,false,false);
        try {
        
        insert a;
        op.AccountId = a.Id;    
       insert op;
        
        } catch(DmlException e) {
        System.debug(e);
        }
            return null;
    }
    
}