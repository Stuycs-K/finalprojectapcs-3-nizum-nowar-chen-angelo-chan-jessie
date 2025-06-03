public class LawnMower implements Displayables{
  int row, col;
  PImage img;
  PVector coordinate;
  
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
  
}
