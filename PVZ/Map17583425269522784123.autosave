public class Map{
  Plant [][] lawn;
  ArrayList<Zombie>Zombies;
  Pea pea;
  
  public Map(Pea pea){
    lawn = new Plant [5][10];
    this.pea = pea;
  }
 
  public void isThere(Plant obj, int x, int y){
    lawn[y][x] = obj;
  }
 
  public void spawnZombies(int total){
   Zombies = new ArrayList<Zombie>(); 
   for (int i = 0; i < total; i++){
     Zombies.add(new Zombie(new PVector(1000,180+100*(int)(Math.random()*5))));
     print("zombie added");
   }
   
  }
  
  public void displayZombies(){
    for (Zombie z : Zombies){
     z.display();
     z.move();
   }
  }
 
  public void display(){
    for (int i = 0; i < lawn.length; i++){
      for (int j = 0; j < lawn[0].length; j++){
        if (lawn[i][j] != null){
          lawn[i][j].display();
          if (lawn[i][j] instanceof PeaShooter){
            ((PeaShooter)lawn[i][j]).shoot(pea);
          }
        }
      }
    }
  }
  
}
