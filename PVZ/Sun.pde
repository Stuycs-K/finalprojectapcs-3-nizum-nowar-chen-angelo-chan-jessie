public class Sun implements Displayables{
    
  PVector coordinate;
  float dy; 
  PImage img;
  

  public Sun(PVector position, boolean Sunflower){
    coordinate = position;
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
    //img = loadImage("Sun.png");
    //image(img, coordinate.x, coordinate.y);
  }
  void moveY(){
    coordinate.y += dy;
  }
  

}
