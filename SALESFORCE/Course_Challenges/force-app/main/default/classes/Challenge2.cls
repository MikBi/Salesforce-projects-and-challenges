public class Challenge2 {
    
    public static void splitIt(Map<String,Integer> interest) {

        Map<String,Integer>  i = interest;

        Map<Integer,Integer> cost = new Map<Integer,Integer>();

        cost.put(1,8);
        cost.put(2,7);
        cost.put(3,6);

        Set<String> keys = i.keySet();

        for(String key : keys) {

            Integer ammount = i.get(key);
            Integer pay;

           if(ammount > 0){
               if (ammount >= 3) {
                pay = cost.get(3) * i.get(key);
                } else {
                pay = cost.get(ammount) * i.get(key);
                }
           } 
            

            System.debug(key + ' has to pay ' + pay + ' for ' + ammount + ' slice of pizza');
        }

    }
}
