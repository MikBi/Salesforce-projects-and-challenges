public class Challenge4 {
    

    public static void fizzBuzz(Integer start,Integer endT) {

        Integer pos = start;

    do {

        if (math.mod(start,3) == 0 || math.mod(start,5) == 0) {
            if (math.mod(start,3) == 0 && math.mod(start,5) == 0) {
                System.debug(' FizzBuzz,');
            } 
            else if (math.mod(start,3) == 0) {
                System.debug(' Fizz,');
        } 
        else if (math.mod(start,5) == 0) {
            System.debug(' Buzz,');
            } 
    }  else {
        System.debug(' ' + start +',');
    }   

        start++;

        } while (endT + 1 != start);


    }



}
