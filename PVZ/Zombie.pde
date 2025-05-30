public class Zombie implements Displayables{
    int HP;
    int damage;
    color c;
    private PVector coordinate;


    public Zombie(PVector coord){
        coordinate = coord;

        c = color (50,78,90);
        HP = 10;
        damage = 5;

    }

    public int getHP(){
      return HP;
    }

    void display(){
       fill(c);
       stroke(c);
       circle(coordinate.x,coordinate.y,100);
       //print("im displaying");
    }

    void move(){

      coordinate.x -= 3;

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


}
