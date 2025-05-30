public class Map{
  ArrayList<Zombie>zombies = new ArrayList<Zombie>(); 
  ArrayList<Projectile>projectiles = new ArrayList<Projectile>();
  Plant [][] lawn;
  Pea pea;
  
  public Map(Pea pea){
    lawn = new Plant [5][9];
    this.pea = pea;
  }
 
  public void isThere(Plant obj, int x, int y){
    int [][] row = new int [][] { {167, 247,}, {247, 324}, {324, 410}, {410, 485},{485, 572}, {572, 652}, {652, 729}, {729, 803}, {803, 890} };
    int [][] col = new int [][] { {138, 240}, {240, 340}, {340, 437}, {437, 533}, {533, 632} };
    
    int r = 0;
    int c = 0;
    for (int i = 0; i < row.length; i ++){
      if ( x <= row[i][0] && x > row[i][1]){
        r = i;
        break;
      }
    }
    for (int j = 0; j < col.length; j ++){
      if ( y <= col[j][0] && y > col[j][1]){
        c = j;
        break;
      }
    }
    lawn[r][c] = obj;
  }
    
  public void addZombie(Zombie zombie){
    zombies.add(zombie);
  }
  
  public void addProjectile(Projectile projectile){
    projectiles.add(projectile);
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
