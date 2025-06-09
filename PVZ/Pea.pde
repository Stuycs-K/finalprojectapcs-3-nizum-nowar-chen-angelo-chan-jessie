public class Pea extends Projectile{
PImage image;
boolean snow; 

  public Pea(PVector position, boolean snows){
   super(10, position,4, 0);
   image = loadImage("Pea.png");
   image.resize(40, 40);
   snow = snows;
  }
  public boolean frozenPea(){
    return snow;
   }
  void display(){
    if(snow){
      tint(0,0,255,255);
    }
    image(image, this.getCoordinate().x, this.getCoordinate().y-20);
    noTint();
  }

}
