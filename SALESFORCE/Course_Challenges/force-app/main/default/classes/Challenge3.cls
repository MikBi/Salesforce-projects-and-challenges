public class Challenge3 {

    public static void isLeap(List<Integer> yearList) {

        for (Integer i : yearList) {
            if (math.mod(i,4) == 0) {
                if (math.mod(i,100) == 0) {
                    if (math.mod(i,400) == 0) {
                        System.debug('Year ' + i + ' is a leap year');
                    } else {
                        System.debug('Year ' + i + ' is not a leap year');
                }
            }   else {
                System.debug('Year ' + i + ' is a leap year');
            }
            }else {
                System.debug('Year ' + i + ' is a leap year');
                }

            }  
        }

        public static void isLeap(Integer start,Integer endTo) {

            for (Integer i = start; i < endTo; i++) {
                if (math.mod(i,4) == 0) {
                    if (math.mod(i,100) == 0) {
                        if (math.mod(i,400) == 0) {
                            System.debug('Year ' + i + ' is a leap year');
                        } else {
                            System.debug('Year ' + i + ' is not a leap year');
                    }
                }   else {
                    System.debug('Year ' + i + ' is a leap year');
                }
                }else {
                    System.debug('Year ' + i + ' is a leap year');
                    }
    
                }  
            }



}
