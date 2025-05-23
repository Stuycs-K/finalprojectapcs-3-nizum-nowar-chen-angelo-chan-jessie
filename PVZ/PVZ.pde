ArrayList<Zombie>Zombies;

void setup(){
  size(1000,620);
  Zombies = new ArrayList<Zombie>();
  Zombies.add(new Zombie(920, 310));
}

void draw(){
   background(242,219,179);
   fill(8,191,17);
   stroke(8,191,17);
   rect(0, 160, 900,300);
   
   for (Zombie zomb : Zombies){
       zomb.move();
       zomb.display();
   }
   
}
