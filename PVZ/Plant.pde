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
    if(PVZ.removePlant){
      tint(255,0,0,255);
    }
       
    }

   public void loseHP(int x){
     HP-= x;
     //print("HP is " + HP);
   }
}
