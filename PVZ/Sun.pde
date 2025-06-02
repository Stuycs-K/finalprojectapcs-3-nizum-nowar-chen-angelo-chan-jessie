public class Sun implements Displayables{
    
  private PVector coordinate;
  float dy; 
  PImage img;
  private int expiration;
  

  public Sun(PVector position, boolean Sunflower){
    expiration = 0;
    img = loadImage("Sun.png");
    img.resize(70,70);
    coordinate = position;
    //map.isThere(this, (int)coordinate.x, (int)coordinate.y);
    if(Sunflower){
      dy=0;
      
    }
    else{
       dy = 1;
 
    }
  
  }
  public int getExpiration(){
    return expiration;
  }
    public PVector getCoordinate(){
    return coordinate;
  }
    void display(){
    fill(200);
    stroke(0);
    if(frameCount % 60 == 0){
      expiration++;
    }
    
    image(img, coordinate.x - 35, coordinate.y - 35);
  }
  void moveY(){
    coordinate.y += dy;
  }
  

}
