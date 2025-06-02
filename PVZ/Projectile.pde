public abstract class Projectile implements Displayables{

  
  PVector coordinate;
  float dx;
  float dy; 
  int damage;
  
  public Projectile(Map map, int dmg){
    coordinate = new PVector(3,3);
    dx = 0;
    dy = 0;
<<<<<<< HEAD
    map.addProjectile(this);
=======
    damage = dmg;
>>>>>>> main
  }
  public Projectile(PVector coordinate, float dx, float dy){
    this.coordinate = coordinate;
    this.dx = dx;
    this.dy = dy; 
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
    fill(0);
    stroke(0);
    circle(coordinate.x,coordinate.y,50);
  }
  
  void applyDamage(Zombie z){
    z.loseHP(damage);
  }

}
