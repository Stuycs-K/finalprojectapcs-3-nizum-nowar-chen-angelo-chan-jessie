public class Map{
  Displayables [][] map;
  
  public Map(){
    map = new Displayables [1078][720];
  }
 
  public void isThere(Displayables obj, int x, int y){
    map[x][y] = obj;
  }
 
  public void display(){
    for (int i = 0; i < map.length; i++){
      for (int j = 0; j < map[0].length; j++){
        if (map[i][j] != null){
          map[i][j].display();
        }
      }
    }
  }
  
}
