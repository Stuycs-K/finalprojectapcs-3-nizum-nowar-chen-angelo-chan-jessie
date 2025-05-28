ArrayList<Zombie>Zombies;
ArrayList<Plant>Plants;
PImage bg;

void setup(){
  size(1347,720);
  Zombies = new ArrayList<Zombie>();
  Plants = new ArrayList<Plant>();
  Zombies.add(new Zombie(new PVector(920, 310)));
  Plants.add(new PeaShooter(new PVector(420, 310), 20));
  
  bg = loadImage("PVZBackground.jpg");
}

void draw(){
   background(bg);

   for (Zombie zomb : Zombies){
       zomb.move();
       zomb.display();
   }
   
   for (Plant p : Plants){
       p.display();
   }
}
