public abstract class Plant implements Displayables{
  private int cost;
  private int HP;
  private int rechargeTime;
  private PVector coordinate;
  color c = color(#68EA32);
  int coolDown;

  public Plant(PVector mapPos, int HPs, int rechargeTimes, int costs, Map map){
    HP = HPs;
    coordinate = mapPos;
    rechargeTime = rechargeTimes;
    cost = costs; 
    map.isThere(this, (int)coordinate.x, (int)coordinate.y);
  }

  abstract void special();

  public int getHP(){
    return HP;
  }

  public int getCost(){
    return cost;
  }
  
  public PVector getCoordinate(){
    return coordinate;
  }
  
  void addSun(ArrayList<PVZ.Sun> Suns){
    //dummy function so that addSun doesnt act up in PVZ
  }
  
  void display(){
       fill(c);
       stroke(c);
       circle(200+ 80*(coordinate.x-1),180+ 100*(coordinate.y-1),75);
    }
    
   public void loseHP(int x){
     HP-= x;
     print("HP is " + HP);
   }
}
