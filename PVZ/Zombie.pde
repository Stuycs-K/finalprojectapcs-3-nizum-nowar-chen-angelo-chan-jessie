public class Zombie implements Displayables{
  private int HP;
  private int damage;
  private color c;
  PImage img;
  private boolean atStart = false;
  private boolean collidePlant = false;
  private PVector coordinate;
  private int spawnTime;

  public Zombie(PVector coord, int time){
      img = loadImage("Zombie.png");
      img.resize(80,125);

        coordinate = coord;

        c = color (50,78,90);
        HP = 25;
        damage = 5;
        spawnTime = time;
    }

    public int getHP(){
      return HP;
    }

    void display(){
       fill(c);
       stroke(c);
      image(img, coordinate.x-25, coordinate.y-60);
       //circle(coordinate.x,coordinate.y,100);
       //print("im displaying");
    }

    void move(){
      
      coordinate.x -= 1;
      if(coordinate.x < 200){
        atStart = true;
      }

    }
    
    boolean gameOver(){
      return atStart;
    }

    public void eat(Plant p){
      p.loseHP(damage);
    }

     public void loseHP(int x){
     HP-= x;

   }
   public PVector getCoordinate(){
     return coordinate;
   }

  public int getX(){
     return (int) coordinate.x;
   }
   
   public int getY(){
     return (int) coordinate.y;
   }
   
   public int getSpawnTime(){
     return spawnTime;
   }

}
