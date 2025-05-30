public class Sun implements Displayables{
    
  PVector coordinate;
  float dy; 
  PImage img;
  

  public Sun(PVector position, boolean Sunflower){
    img = loadImage("Sun.png");
    img.resize(70,70);
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

    
    image(img, coordinate.x - 35, coordinate.y - 35);
  }
  void moveY(){
    coordinate.y += dy;
  }
  

}
