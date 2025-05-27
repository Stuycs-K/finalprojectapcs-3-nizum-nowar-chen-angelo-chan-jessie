public class Zombie extends Displayables{
    int HP;
    int damage;
    float x, y;
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
       circle(x,y,100);
    }
    
    void move(){
      x -= 3;
    }
    
    

}
