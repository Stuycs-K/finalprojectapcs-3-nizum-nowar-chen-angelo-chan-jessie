ArrayList<Zombie>Zombies;
ArrayList<PeaShooter>Plants;
Pea pea;
PImage bg;

void setup(){
  size(1078,720);
  Zombies = new ArrayList<Zombie>();
  Plants = new ArrayList<PeaShooter>();
  Zombies.add(new Zombie(new PVector(920, 310)));
  Plants.add(new PeaShooter(new PVector(420, 310), 20));
  
  bg = loadImage("PVZBackground.jpg");
  
  pea = new Pea(Plants.get(0).getCoordinate());
}

void draw(){
   background(bg);
   //if(frameCount % 10 == 0){
     Pea v = new Pea(new PVector(300,310));
     //PeaShooter x = new PeaShooter(new PVector(620, 310), 20);
     //x.shoot(v);'
     v.moveX();
     v.display();
     
     
   //}

   for (Zombie zomb : Zombies){
       zomb.move();
       zomb.display();
   }
   
   for (PeaShooter p : Plants){
       p.display();
       p.shoot(pea);
   }
}
