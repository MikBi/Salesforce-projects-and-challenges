public class RandomContactFactory {
  
    public static List<Contact> generateRandomContacts(Integer positions,String LastName) {
     
        List<Contact> contacts = new List<Contact>();


        for (Integer i = 0; i < positions; i++) {

            contacts.add(new Contact(LastName = LastName + i));
            
        }



        return contacts;
    }
}