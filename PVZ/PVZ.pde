Map map;


ArrayList<PeaShooter>Plants;
ArrayList<Sun> Suns;
Pea pea;
Sun sun;
PImage bg;
int sunBank = 0;

void setup(){
  size(1078,720);
  
  pea = new Pea(new PVector(420,310));
  map = new Map(pea);
  
  
  Plants = new ArrayList<PeaShooter>();
  Plants.add(new PeaShooter(new PVector(3, 4), 20, map));
  
  bg = loadImage("PVZBackground.jpg");
  
  sun = new Sun(new PVector(100,100), false);
  Suns = new ArrayList<Sun>();
  Suns.add(sun);
  map.spawnZombies(5);
}

void draw(){
   background(bg);
   fill(225);
   rect(0,0,50,30);
   fill(0);
   text(sunBank,20,20);
   
   if(frameCount % 200 == 0){
     sun = new Sun(new PVector((int)(Math.random()* 1078) + 100, 0), false);
     Suns.add(sun);
   }


    map.display(); 
    for (Sun s : Suns){
       s.display();
       s.moveY();
      
    }
}

void mouseClicked(){
  for (int i = 0; i < Suns.size(); i++){
       if(Math.abs(mouseX - ((Suns.get(i)).getCoordinate()).x) <= 25 && Math.abs(mouseY - ((Suns.get(i)).getCoordinate()).y) <= 25){
          sunBank+=50;
          
         Suns.remove(i);
         i--;
       }
       
      
    }
 
}
