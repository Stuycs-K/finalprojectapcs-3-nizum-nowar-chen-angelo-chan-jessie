public class Displayables{
  PVector coordinate;
  
  public Displayables(PVector coordinate){
    this.coordinate = coordinate;
  }
  
  public float getX(){
    return coordinate.x;
  }
  
  public float getY(){
    return coordinate.y;
  }
  
}
