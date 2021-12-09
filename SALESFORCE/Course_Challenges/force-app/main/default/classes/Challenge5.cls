public class Challenge5 {
  
    public static void fibonacci(Integer ammount) {
    
        Integer pos = 1;
        Integer result = 1;
        Integer prevResult = 1;
        Integer before = 0;

        while (pos != ammount) {
            
            if (pos == 1) {
                System.debug('0 + 1 = ' + result);
            } else {
                before = result;
                System.debug(result + ' + ' + prevResult + ' = ' + (result += prevResult));
                prevResult = before;
            }

            pos++;

        }

    }

}
