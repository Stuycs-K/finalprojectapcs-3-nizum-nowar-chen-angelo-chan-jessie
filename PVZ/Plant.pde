public abstract class Plant implements Displayables{
  private int cost;
  private int HP;
  private int rechargeTime;
  private PVector coordinate;
  color c = color(#68EA32);

  public Plant(PVector coord, int HPs, int rechargeTimes, int costs, Map map){
    coordinate = coord;
    hp = HPs;
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

  void display(){
       fill(c);
       stroke(c);
       circle(coordinate.x,coordinate.y,75);
    }
    
   public void loseHP(int x){
     HP-= x;
   
   }
}
