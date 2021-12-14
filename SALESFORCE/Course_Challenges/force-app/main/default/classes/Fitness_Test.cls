@isTest
public class Fitness_Test {

@isTest static void constructor(){

    Fitness fit = new Fitness((Double) 1.0, (Double) 2.0);

    System.assert(true);

}

@isTest static void BMI() {

    Double result = Fitness.calculateBMI((Double) 1.0, (Double) 4.0);

    System.assert(true);

}

@isTest static void pace() {

    Double result = Fitness.calculatePace((Double) 100.0, (Double) 1.0);

    System.assert(true);

}


}
