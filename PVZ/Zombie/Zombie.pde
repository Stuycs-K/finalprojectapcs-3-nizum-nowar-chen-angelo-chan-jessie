public class Zombie{
    int HP;
    int damage;
    float x, y;
    color c;
    
    public Zombie(int xCoord, y Coord){
        x = xCoord;
        y = yCoord;
        c = color (50,78,116);
        HP = 10;
        damage = 5;
    }
    
    void display(){
       fill(c);
       stroke(c);
       circle(x,y,30);
    }
    
    void move(){
      x -= 7;
    }
    
    

}
