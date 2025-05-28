public abstract class Plant implements Displayables{
  private int cost;
  private int hp;
  private int rechargeTime;
  private PVector coordinate;
  color c = color(#68EA32);

  public Plant(PVector coord, int HPs, int rechargeTimes, int costs){
    coordinate = coord;
    hp = HPs;
    rechargeTime = rechargeTimes;
    cost = costs; 
  }

  abstract void special();

  public int getHP(){
    return hp;
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
}
