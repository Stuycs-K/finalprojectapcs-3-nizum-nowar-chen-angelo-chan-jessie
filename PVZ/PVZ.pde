ArrayList<Zombie>Zombies;
ArrayList<PeaShooter>Plants;
ArrayList<Sun> Suns;
Pea pea;
Sun sun;
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
  sun = new Sun(new PVector(100,100), false);
  Suns = new ArrayList<Sun>();
  Suns.add(sun);
}

void draw(){
   background(bg);
   fill(225);
   rect(0,0,50,30);
   fill(0);
   text(sunBank,20,20);



   for (Zombie zomb : Zombies){
       //zomb.move();
       zomb.display();
   }
   
   for (PeaShooter p : Plants){
       p.display();
       p.shoot(pea);
   }
    for (Sun s : Suns){
       s.display();
       s.moveY();
      
    }
}

void mouseClicked(){
  for (Sun s : Suns){
       if(mouseX == s.
      
    }
  sunBank+=50;
}
