public class SnowPea extends PeaShooter{
  private PImage snowpeas;
  
  public SnowPea(PVector coordinate, int damages, Map map){
    super(coordinate, damages,map);
    snowpeas = loadImage("Snowpea.png");
    snowpeas.resize(75,75);
  }
  
  void freezeZombie(Zombie z){
    z.getFrozen();
  }
  
  void display(){
    image(snowpeas, (float)170+ 80*(this.getCoordinate().x-1), (float)150+ 100*(this.getCoordinate().y-1));
  }
  void shoot(){
      ArrayList<Zombie>zombies = map.getZombies();
       boolean zombieInRow = false;
      for(Zombie z: zombies){
        if(Math.abs(z.getCoordinate().y - rowIntoY((int)this.getCoordinate().y)) <= 50 && z.getCoordinate().x < 890){
          zombieInRow = true;
        }
      }
        if (zombieInRow && frameCount % 100 == 0){
          float x = 200 + 80 * (getCoordinate().x - 1);
          float y = 180 + 100 * (getCoordinate().y - 1);
          this.getPeas().add(new Pea(new PVector(x + 30, y)));
        }
        
      for (int i = this.getPeas().size() - 1; i >= 0; i--){
        if (zombies.size() <= 0){
          break;
        }
        Pea pea = this.getPeas().get(i);
        pea.moveX();
        pea.display();
        
        if(pea.getCoordinate().x > width){
          this.getPeas().remove(i);
          i--;
        }
        
        for (int j = zombies.size() - 1; j >= 0; j--){
          Zombie zomb = zombies.get(j);
          if (hasCollided(pea, zomb)){
            zomb.loseHP(getDamage());
            freezeZombie(zomb);
            this.getPeas().remove(i);
            i--;
            if(zomb.getHP() <= 0){
              zombies.remove(j);
              j--;
            }
            break;
          }
        }
      }
  }
}
