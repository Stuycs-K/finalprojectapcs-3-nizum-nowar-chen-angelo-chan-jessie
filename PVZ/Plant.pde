public abstract class Plant{
  private int cost;
  private int hp;
  private int rechargeTime;
  private PVector row;
  private PVector col;

  public Plant(PVector rows, PVector cols, int HPs, int rechargeTimes, int costs){
    row = rows;
    col = cols;
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

}
