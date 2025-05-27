public abstract class Projectile{
  private PVector coordinate;
  private float dx; 
  private float dy; 
  
  public Projectile(PVector coord, float dx, float dy){
    this.dx =dx;
    this.dy=dy;
    coordinate = coord; 
  }
  public float getX(){
    return coordinate.x;
  }
  
  public float getY(){
    return coordinate.x;
  }
  
  void moveX(){
    coordinate.x+=dx;
  }
  
  void moveY(){
    coordinate.y += dy;
  }
}
