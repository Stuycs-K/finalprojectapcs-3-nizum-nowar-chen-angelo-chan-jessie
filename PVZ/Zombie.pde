public class Zombie{
    int HP;
    int damage;
    float x, y;
    color c;
    
    public Zombie(int xCoord, int yCoord){
        x = xCoord;
        y = yCoord;
        c = color (50,78,90);
        HP = 10;
        damage = 5;
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
