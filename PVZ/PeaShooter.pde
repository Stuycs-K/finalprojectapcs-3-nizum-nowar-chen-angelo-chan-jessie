public class PeaShooter extends Plant{
  private int damage;
  
  
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
  
  
  void shoot(){
  }



}
