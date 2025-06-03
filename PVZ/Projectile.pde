public abstract class Projectile implements Displayables{

  
  PVector coordinate;
  float dx;
  float dy; 
  int damage;
  
  public Projectile(int dmg, PVector coordinate, float dx, float dy){
    this.coordinate = coordinate;
    this.dx = dx;
    this.dy = dy;
    damage = dmg;
  }

 
  public PVector getCoordinate(){
    return coordinate;
  }
  
    void moveX(){
    coordinate.x+=dx;
  }
  
  void moveY(){
    coordinate.y += dy;
  }
  
  void display(){
    color c = color(#68EA32);
    fill(c);
    stroke(0);
    circle(coordinate.x,coordinate.y,50);
  }
  
  void applyDamage(Zombie z){
    z.loseHP(damage);
  }

}
