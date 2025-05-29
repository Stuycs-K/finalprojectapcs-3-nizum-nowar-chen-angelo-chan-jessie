public class Map{
  ArrayList<Zombie>zombies = new ArrayList<Zombie>(); 
  Plant [][] lawn;
  Pea pea;
  
  public Map(Pea pea){
    lawn = new Plant [5][9];
    this.pea = pea;
  }
 
  public void isThere(Plant obj, int x, int y){
    lawn[x][y] = obj;
  }
  
  public void addZombie(Zombie zombie){
    zombies.add(zombie);
  }
 
  public void display(){
    for (int i = 0; i < lawn.length; i++){
      for (int j = 0; j <lawn[0].length; j++){
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
