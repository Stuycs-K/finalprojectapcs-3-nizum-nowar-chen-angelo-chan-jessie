public class Map{
  Plant [][] lawn;
  ArrayList<Zombie>Zombies = new ArrayList<Zombie>();
  ArrayList<Integer>spawnTimes = new ArrayList<>();
  Pea pea;
  ArrayList<LawnMower>lawnMowers = new ArrayList<LawnMower>();
 
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
 
  public boolean isPlant(int x, int y){
    return lawn[y][x] != null;

  }
 
  public int xIntoCol(int x){
     return (x - 200) / 80 + 1;
  }
 
   public int yIntoRow(int x){
     return (x - 180) / 100 + 1;
  }
 
  //public boolean hayZombies(int row){
  //  for(Zombie z: Zombies){
  //      if(Math.abs(z.getY() - ((row - 1) * 100)+180)<= 100){
  //        return true;
  //      }
  //    }
  //   return false;
  //  }

 
  public void spawnZombies(int total){
   for (int i = 0; i < total; i++){
     Zombies.add(new Zombie(new PVector(1000,180+100*(int)(Math.random()*5))));
     //print("zombie added");
     spawnTimes.add(100 * (int)(Math.random() * 10 + 1));
   }
   
  }
 
 
  public void displayZombies(){
    for (int i = 0; i < Zombies.size(); i++){
      if(Zombies.get(i).getHP() > 0){
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
  }
 
  public void placeLawnMowers(){
      int [][] coords = new int [][] { {140, 190}, {135, 280}, {140, 385}, {130, 475}, {122, 575}};
      for (int i = 0; i < 5; i++){
        lawnMowers.add(new LawnMower(new PVector(coords[i][0], coords[i][1])));
        //println("new lawn mower");
      }
  }
 
  public void displayLawnMowers(){
    for (int i = 0; i < lawnMowers.size(); i++){
     
      int rowWipedOut = -1;
      for (int j = 0; j < Zombies.size(); j++){
        Zombie z = Zombies.get(j);
        //println("i: " + i);
        LawnMower L = lawnMowers.get(i);
       
        if (hitLawnMower(z, L)){
          rowWipedOut = (int) z.getCoordinate().y;
          Zombies.remove(j);
          lawnMowers.remove(i);
          i--;
        }
               
      }
     
      for (int j = 0; j < Zombies.size(); j++){
        if (Math.abs( rowWipedOut - Zombies.get(j).getCoordinate().y ) <= 100){
          Zombies.remove(j);
        }
      }
     
      rowWipedOut = -1;
     
      lawnMowers.get(i).display();
     
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
    return Math.abs((a.getCoordinate()).x - (b.getCoordinate()).x) <= 50 && Math.abs((a.getCoordinate()).y - (b.getCoordinate()).y) <= 30;
 
  }
    public boolean hasCollided(Pea a, Zombie b){
    return Math.abs((a.getCoordinate()).x - (b.getCoordinate()).x) <= 150 && Math.abs((a.getCoordinate()).y - (b.getCoordinate()).y) <= 130;
 
  }
 
  public void collideProj(Projectile a, Zombie b){
    a.applyDamage(b);
  }
 
  public boolean hitLawnMower(Zombie z, LawnMower L){
    return Math.abs((z.getCoordinate()).x - (L.getCoordinate()).x) <= 80 && Math.abs((z.getCoordinate()).y - (L.getCoordinate()).y) <= 80;
  }
 
}
