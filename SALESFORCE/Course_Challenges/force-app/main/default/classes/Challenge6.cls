public class Challenge6 {

    public static void triangle(Integer ammount) {

        for (Integer i = 1; i <= ammount; i++) {
            String res = '';
            for (Integer y = 1; y <= i; y++) {
                res += '* ';
            }
            System.debug(res);
        }


    }

}
