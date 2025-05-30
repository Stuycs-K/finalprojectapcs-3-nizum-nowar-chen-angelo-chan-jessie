public class Sun implements Displayables{
    
  PVector coordinate;
  float dy; 
  

  public Sun(PVector position, boolean Sunflower){
    coordinate = position;
    //map.isThere(this, (int)coordinate.x, (int)coordinate.y);
    if(Sunflower){
      dy=0;
      
    }
    else{
       dy = 0.03;
 
    }
  
  }
    public PVector getCoordinate(){
    return coordinate;
  }
    void display(){
    fill(200);
    stroke(0);
    circle(coordinate.x,coordinate.y,50);
  }
  void moveY(){
    coordinate.y += dy;
  }
  

}
