ArrayList<Zombie>Zombies;
ArrayList<Plant>Plants;
PImage bg;

void setup(){
  size(1347,720);
  Zombies = new ArrayList<Zombie>();
  Plants = new ArrayList<Plant>();
  Zombies.add(new Zombie(920, 310));
  
  bg = loadImage("PVZBackground.jpg");
}

void draw(){
   background(bg);

   for (Zombie zomb : Zombies){
       zomb.move();
       zomb.display();
   }
   
}
