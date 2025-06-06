
public class Map{
  Plant [][] lawn;
  ArrayList<Zombie>Zombies = new ArrayList<Zombie>();
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
/*
X's:
1: 160 -> 245  = 85
2: 246 -> 320  = 74 
3: 321 -> 410 = 89 
4: 410 -> 490: 80
5: 491 -> 565: 74
6: 566 -> 652
7: 653 -> 725
8: 725 -> 810
9: 810 -> 905

Y's:
1: 141 240
2: 240 335
3: 335 445
4: 445 535
5: 535 635

*/

   public int yIntoRow(int y){
     if(y > 535){
       return 5;
     }
     else if(y > 445){
       return 4;
     }
     else if ( y > 335){
       return 3; 
     }
     else if(y > 240){
       return 2;
     }
     else if (y > 140){
       return 1; 
     }
      return 0;
  }
  public int xIntoCol(int x){
     if(x > 810){
       return 9;
     }
     else if (x > 725){
       return 8;
     }
     else if(x > 653){
       return 7;
     }
     else if( x > 566){
       return 6;
     }
     else if (x > 491){
       return 5;
     }
     else if (x > 410){
       return 4;
     }
     else if(x > 321){
       return 3;
     }
     else if (x > 245){
       return 2;
     }
     else if(x > 160){
       return 1; 
     }
     
     
     return 0;
  }




  public void spawnZombies(int total,int wave){
   for (int i = 0; i < total + wave; i++){
     int spawnTime = (int)Math.pow(wave,1.6) * 1000 + frameCount + 100 * (int)(Math.random() * 10 + 1);
     Zombies.add(new Zombie(new PVector(1000,180+100*(int)(Math.random()*5)),spawnTime));
     print(wave + " " + spawnTime + " ");

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

     if (frameCount > Zombies.get(i).getSpawnTime() && !Zombies.get(i).collidePlant){
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
        LawnMower L = lawnMowers.get(i);
        if (L.getMoveForward()){
          L.move();
        }

        for (int j = 0; j < Zombies.size(); j++){

            Zombie z = Zombies.get(j);


            if (hitLawnMower(z, L)){

                Zombies.remove(j);
                       if (j != 0){
                            j--;
                        }
                L.setMoveForward(true);


            }

        }

        if (L.getCoordinate().x >= 905){
            lawnMowers.remove(i);
            if (i > 0){
                i --;
            }
        }


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
