public class PeaShooter extends Plant{
  private int damage;
  
  
  public PeaShooter(PVector x, PVector y, int HPs, int rechargeTimes, int costs, int damages){
    super(x, y, HPs, rechargeTimes, costs);
    damage = damages; 
  }
  
  public PeaShooter(PVector x, PVector y, int damages){
    super(x, y, 20, 10, 100);
    damage = damages; 
  }
  
  void special(){
  
  
  }
  
  void shoot(){
  }



}
