public class PeaShooter extends Plant{
  private int damage;
  private ArrayList<Pea> Peas; 
  
  
  public PeaShooter(PVector coordinate, int HPs, int rechargeTimes, int costs, int damages){
    super(coordinate, HPs, rechargeTimes, costs);
    damage = damages; 
  }
  
  public PeaShooter(PVector coordinate, int damages){
    super(coordinate, 20, 10, 100);
    damage = damages; 
  }
  
  void special(){
  
  
  }

  
  
  void shoot(Pea p){
    Peas.add(p);
    for(Pea each: Peas){
      each.moveX();
    
    }
    
  }



}
