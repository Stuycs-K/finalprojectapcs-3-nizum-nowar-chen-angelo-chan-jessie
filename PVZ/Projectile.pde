public abstract class Projectile implements Displayables{

  
  PVector coordinate;
  float dx;
  float dy; 
  
  public Projectile(Map map){
    coordinate = new PVector(3,3);
    dx = 0;
    dy = 0;
    map.addProjectile(this);
  }
  public Projectile(PVector coordinate, float dx, float dy){
    this.coordinate = coordinate;
    this.dx = dx;
    this.dy = dy; 
  }
  
  public float getX(){
    return coordinate.x;
  }
  
  public float getY(){
    return coordinate.y;
  }
  
    void moveX(){
    coordinate.x+=dx;
  }
  
  void moveY(){
    coordinate.y += dy;
  }
  
  void display(){
    fill(0);
    stroke(0);
    circle(coordinate.x,coordinate.y,50);
  }

}
