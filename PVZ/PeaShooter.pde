public class PeaShooter extends Plant implements Displayables{
  private int damage;
  private ArrayList<Pea> peas; 
  
  
  public PeaShooter(PVector coordinate, int HPs, int rechargeTimes, int costs, int damages, Map map){
    super(coordinate, HPs, rechargeTimes, costs, map);
    damage = damages; 
    peas = new ArrayList<Pea>();
  }
  
  public PeaShooter(PVector coordinate, int damages, Map map){
    //HP: 20
    //Recharge: 10
    //Costs: 100
    super(coordinate, 20, 10, 100, map);
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
