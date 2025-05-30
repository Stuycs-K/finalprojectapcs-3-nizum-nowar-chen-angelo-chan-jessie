public class Map{
  Displayables [][] map;
  Pea pea;
  
  public Map(Pea pea){
    map = new Displayables [1078][720];
    this.pea = pea;
  }
 
  public void isThere(Displayables obj, int x, int y){
    map[x][y] = obj;
  }
 
  public void display(){
    for (int i = 0; i < map.length; i++){
      for (int j = 0; j < map[0].length; j++){
        if (map[i][j] != null){
          map[i][j].display();
          if (map[i][j] instanceof Zombie){
            ((Zombie)map[i][j]).move();
          }
          if (map[i][j] instanceof PeaShooter){
            ((PeaShooter)map[i][j]).shoot(pea);
          }
        }
      }
    }
  }
  
}
