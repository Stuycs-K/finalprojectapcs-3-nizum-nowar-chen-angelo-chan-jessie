public abstract class Plant{
  private int cost;
  private int hp;
  private int refreshRate;

  abstract void special();
  
  public int getHP(){
    return hp;
  }
  
  public int getCost(){
    return cost;
  }

}
