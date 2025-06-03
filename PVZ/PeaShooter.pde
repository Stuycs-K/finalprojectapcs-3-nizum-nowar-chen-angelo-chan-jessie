public class PeaShooter extends Plant implements Displayables{
  private int damage;
  private ArrayList<Pea> peas; 
  PImage image;
  
  
  public PeaShooter(PVector coordinate, int HPs, int rechargeTimes, int costs, int damages, Map map){
    super(coordinate, HPs, rechargeTimes, costs, map);
    damage = damages; 
    peas = new ArrayList<Pea>();
    image = loadImage("Peashooter.png");
    image.resize(75, 75);
  }
  
  public PeaShooter(PVector coordinate, int damages, Map map){
    //HP: 20
    //Recharge: 10
    //Costs: 100
    super(coordinate, 20, 10, 100, map);
    damage = damages; 
    image = loadImage("Peashooter.png");
    image.resize(75, 75);
    peas = new ArrayList<Pea>();
  }
  
  void special(){
  
  
  }
  
    void display(){

      image(image, (float)170+ 80*(this.getCoordinate().x-1), (float)150+ 100*(this.getCoordinate().y-1));
       //circle(coordinate.x,coordinate.y,100);
       //print("im displaying");
    }


 public int getDamage(){
    return damage;
  }
  
  
  public boolean hasCollided(Pea a, Zombie b){
    return Math.abs((a.getCoordinate()).x - (b.getCoordinate()).x) <= 50 && Math.abs((a.getCoordinate()).y - (b.getCoordinate()).y) <= 50;
  }
  
  void shoot(Pea p){
      ArrayList<Zombie>zombies = map.getZombies();
      if (frameCount % 100 == 0){
        float x = 200 + 80 * (getCoordinate().x - 1);
        float y = 180 + 100 * (getCoordinate().y - 1);
        peas.add(new Pea(new PVector(x + 30, y)));
      }
      
      for (int i = peas.size() - 1; i >= 0; i--){
        if (zombies.size() <= 0){
          break;
        }
        Pea pea = peas.get(i);
        pea.moveX();
        pea.display();
        
        if(pea.getCoordinate().x > width){
          peas.remove(i);
          i--;
        }
        
        for (int j = zombies.size() - 1; j >= 0; j--){
          Zombie zomb = zombies.get(j);
          if (hasCollided(pea, zomb)){
            zomb.loseHP(getDamage());
            print("contact");
            peas.remove(i);//////////
            i--;
            if(zomb.getHP() <= 0){
              zombies.remove(j);
              j--;
            }
            break;
          }
        }
      }
  }



}
