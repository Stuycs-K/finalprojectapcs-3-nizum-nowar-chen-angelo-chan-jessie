ArrayList<Zombie>Zombies;
ArrayList<PeaShooter>Plants;
ArrayList<Sun> Suns;
Pea pea;
PImage bg;
int sunBank = 0;

void setup(){
  size(1078,720);
  Zombies = new ArrayList<Zombie>();
  Plants = new ArrayList<PeaShooter>();
  Zombies.add(new Zombie(new PVector(920, 310)));
  Plants.add(new PeaShooter(new PVector(420, 310), 20));
  
  bg = loadImage("PVZBackground.jpg");
  
  pea = new Pea(new PVector(420,310));
}

void draw(){
   background(bg);



   for (Zombie zomb : Zombies){
       //zomb.move();
       zomb.display();
   }
   
   for (PeaShooter p : Plants){
       p.display();
       p.shoot(pea);
   }
}
