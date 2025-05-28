public class Zombie extends Displayables{
    int HP;
    int damage;
    color c;
    
    public Zombie(PVector coord){
        super(coord);
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
    }
    
    void move(){
      coordinate.x -= 3;
    }
    
    

}
