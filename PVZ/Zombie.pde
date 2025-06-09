public class Zombie implements Displayables{
  private int HP;
  private int damage;
  PImage img;
  private boolean atStart = false;
  private boolean collidePlant = false;
  private PVector coordinate;
  private int spawnTime;
  private boolean snowed = false; 
  private int frames;
  public Zombie(PVector coord, int time){
      img = loadImage("Zombie.png");
      img.resize(80,125);
        coordinate = coord;
        HP = 100;
        damage = 5;
        spawnTime = time;
    }

    public int getHP(){
      return HP;
    }

    void display(){
       if(snowed){
        tint(0, 0, 225, 255);
        if(frameCount - frames >= 40){ // for demo purposes, change later
          snowed = false;
        }
        
      }
      image(img, coordinate.x-25, coordinate.y-60);
 
       //circle(coordinate.x,coordinate.y,100);
       //print("im displaying");
    }

    void move(){
      if(snowed){
        coordinate.x-= 0.5;
      }
      else{
         coordinate.x -= 1;
      }
     
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
   
   void getFrozen(){
     snowed = true; 
     frames = frameCount; 
     }
   

}
