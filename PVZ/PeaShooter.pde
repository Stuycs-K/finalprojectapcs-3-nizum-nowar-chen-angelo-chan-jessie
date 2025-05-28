public class PeaShooter extends Plant implements Displayables{
  private int damage;
  private ArrayList<Pea> peas; 
  
  
  public PeaShooter(PVector coordinate, int HPs, int rechargeTimes, int costs, int damages){
    super(coordinate, HPs, rechargeTimes, costs);
    damage = damages; 
    peas = new ArrayList<Pea>();
  }
  
  public PeaShooter(PVector coordinate, int damages){
    //HP: 20
    //Recharge: 10
    //Costs: 100
    super(coordinate, 20, 10, 100);
    damage = damages; 
    peas = new ArrayList<Pea>();
  }
  
  void special(){
  
  
  }
  

  
  
  void shoot(Pea p){
    peas.add(p);
    for(Pea each: peas){
      each.display();
      each.moveX();
    
    }
    
  }



}
