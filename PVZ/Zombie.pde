public class Zombie implements Displayables{
    int HP;
    int damage;
    color c;
    private PVector coordinate;

    
    public Zombie(PVector coord, Map map){
        coordinate = coord;
        
        c = color (50,78,90);
        HP = 10;
        damage = 5;
        
        map.isThere(this, (int)coordinate.x, (int)coordinate.y); 
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
