public abstract class Plant{
  private int cost;
  private int hp;
  private int rechargeTime;
  private PVector y;
  private PVector x;

  public Plant(PVector x, PVector y, int HPs, int rechargeTimes, int costs){
    x = x;
    y = y;
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
