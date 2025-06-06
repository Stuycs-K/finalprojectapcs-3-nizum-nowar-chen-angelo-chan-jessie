public class LawnMower implements Displayables{
  private int row, col;
  private PImage img;
  private PVector coordinate;
  private boolean moveForward;
  
  public LawnMower(PVector position){
    coordinate = position;
    img = loadImage("LawnMower.png");
    img.resize(150, 123);
  }
  
  void display(){
      image(img, coordinate.x-125, coordinate.y-60);
       //circle(coordinate.x,coordinate.y,100);
       //print("im displaying");
    }
    
    public PVector getCoordinate(){
     return coordinate;
   }
   
   
   public boolean getMoveForward(){
     return moveForward;
   }
   
   public void setMoveForward(boolean go){
     moveForward = go;
   }
   
   public void move(){
     coordinate.x += 5;
   }
   //i dont trust that this saved
}
