public class Challenge1 {
    
    public static void result() {

    Map<String, List<String>> page = new Map<String, List<String>>();

    page.put('Apex', new List<String> {
    'Demistifying Apex Collections', 'Datatypes and variables in Apex'
    });
    page.put('Lightning', new List<String>{
    'Events in Aura framework', 'Developing reusable components'
    } );

    Set<String> keys = page.keySet();

    for (String key : keys) {
        
        List<String> values = page.get(key);

        System.debug(key + ':\n');

        Integer pos = 1;

        for (String s : values) {
            System.debug(pos + '. ' + s);
            pos++;
        }

    }

    


    }

}
