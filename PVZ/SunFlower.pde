public class SunFlower extends Plant{
  PImage image;
  
  
  public SunFlower(PVector mapPos, Map map){
    //HP: 30
    //Recharge: 10
    //Costs: 50
    super(mapPos,30,10,50, map);
    image = loadImage("Sunflower.png");
    image.resize(75, 75);
  
  }
  void special(){}
  
  public int getX(){
     return (int) (200+ 80*(this.getCoordinate().x-1));
   }
   
   public int getY(){
     return (int) (180+ 100*(this.getCoordinate().y-1));
   }
   //hi can you please save
  void addSun(ArrayList<Sun> Suns){
    sun = new Sun(new PVector(this.getX(), this.getY()), true);
    Suns.add(sun);
  }
  
  void display(){

      image(image, (float)170+ 80*(this.getCoordinate().x-1), (float)150+ 100*(this.getCoordinate().y-1));
       //circle(coordinate.x,coordinate.y,100);
       //print("im displaying");
    }
    
}
