public class Fitness {
    
private Double weight;    
private Double height;   

public Fitness(Double w, Double h) {
    this.weight = w;
    this.height = h;
}

public static Double calculateBMI(Double weight, Double height) {
    
    Double he = Math.pow( height, (Double) 2);
    Double result = weight/he;
    System.debug(result);
    return result;

}

public static Double calculatePace(Double km, Double hours) {    
    System.debug(km/hours);
    return km/hours;
}



}
