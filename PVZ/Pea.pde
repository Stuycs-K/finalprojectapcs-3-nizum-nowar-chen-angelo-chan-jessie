public class Pea extends Projectile{
PImage image;

  public Pea(PVector position){
   super(10, position,4, 0);
   image = loadImage("Pea.png");
   image.resize(40, 40);
  }

  void display(){
    image(image, this.getCoordinate().x, this.getCoordinate().y-20);
  }

}
