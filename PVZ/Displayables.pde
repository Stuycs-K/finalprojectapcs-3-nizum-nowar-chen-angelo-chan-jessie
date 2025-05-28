public class Displayables{
  PVector coordinate;
  float dx;
  float dy; 
  
  public Displayables(){
    coordinate = new PVector(3,3);
    dx = 0;
    dy = 0;
  }
  public Displayables(PVector coordinate, float dx, float dy){
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
    coordinate.x+=3;
  }
  
  void moveY(){
    coordinate.y += dy;
  }
  void display(){
    fill(0,0,0);
    circle(coordinate.x, coordinate.y, 100); 
  }
}
