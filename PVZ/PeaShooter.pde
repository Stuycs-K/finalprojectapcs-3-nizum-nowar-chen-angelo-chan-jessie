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
  
  public int getDamage(){
    return damage;
  }
  
  
  public boolean hasCollided(Pea a, Zombie b){
    return (a.getCoordinate()).x == (b.getCoordinate()).x && (a.getCoordinate()).y == (b.getCoordinate()).y;
  
  }
  
  void shoot(Pea p){
      if (frameCount % 100 == 0){
        float x = 200 + 80 * (getCoordinate().x - 1);
        float y = 180 + 100 * (getCoordinate().y - 1);
        peas.add(new Pea(new PVector(x + 30, y)));
      }
      
      for (int i = peas.size() - 1; i >= 0; i--){
        Pea pea = peas.get(i);
        pea.moveX();
        pea.display();
        
        if(pea.getCoordinate().x > width){
          peas.remove(i);
        }
        
        ArrayList<Zombie>zombies = map.getZombies();
        for (int j = zombies.size() - 1; j >= 0; j--){
          Zombie zomb = zombies.get(j);
          if (hasCollided(pea, zomb)){
            zomb.loseHP(getDamage());
            peas.remove(i);//////////
            if(zomb.getHP() <= 0){
              zombies.remove(j);
            }
            break;
          }
        }
      }
  }
    
    
    
  }
