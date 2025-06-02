public class Map{
  Plant [][] lawn;
  ArrayList<Zombie>Zombies = new ArrayList<Zombie>();
  ArrayList<Integer>spawnTimes = new ArrayList<>();
  Pea pea;
  
  public Map(Pea pea){
    lawn = new Plant [6][10];
    this.pea = pea;
  }
  
  public ArrayList<Zombie> getZombies(){
    return Zombies;
   }
 
  public void isThere(Plant obj, int x, int y){
    lawn[y][x] = obj;
  }
 
  public int xIntoCol(int x){
     return (x - 200) / 80 + 1;
  }
  
   public int yIntoRow(int x){
     return (x - 180) / 100 + 1;
  }
  
  public void spawnZombies(int total){
   for (int i = 0; i < total; i++){
     Zombies.add(new Zombie(new PVector(1000,180+100*(int)(Math.random()*5))));
     print("zombie added");
     spawnTimes.add(100 * (int)(Math.random() * 10 + 1));
   }
   
  }
  
  public void displayZombies(){
    for (int i = 0; i < Zombies.size(); i++){
      Zombies.get(i).display();
      
      if (Zombies.get(i).getX() < 800){
        if (lawn[yIntoRow(Zombies.get(i).getY())][xIntoCol(Zombies.get(i).getX())] != null){
          Zombies.get(i).collidePlant = true;
          if(frameCount % 20 == 0){
            Zombies.get(i).eat(lawn[yIntoRow(Zombies.get(i).getY())][xIntoCol(Zombies.get(i).getX())]);    
          }
        }
        else{
          Zombies.get(i).collidePlant = false;
        }
      }
      
     if (frameCount > spawnTimes.get(i) && !Zombies.get(i).collidePlant){
      Zombies.get(i).move();
      
     }
    }
  }
 
  public void display(){
    for (int i = 0; i < lawn.length; i++){
      for (int j = 0; j < lawn[0].length; j++){
        if (lawn[i][j] != null && lawn[i][j].HP <=0){
          lawn[i][j] = null;
        }
        if (lawn[i][j] != null){
          lawn[i][j].display();
          if (lawn[i][j] instanceof PeaShooter){
            ((PeaShooter)lawn[i][j]).shoot(pea);
          }
        }
      }
    }
  }
  
  public boolean hasCollided(Plant a, Zombie b){
    return (a.getCoordinate()).x == (b.getCoordinate()).x && (a.getCoordinate()).y == (b.getCoordinate()).y;
  
  }
    public boolean hasCollided(Pea a, Zombie b){
    return (a.getCoordinate()).x == (b.getCoordinate()).x && (a.getCoordinate()).y == (b.getCoordinate()).y;
  
  }
  
  public void collideProj(Projectile a, Zombie b){
    a.applyDamage(b);
  }
  
}
