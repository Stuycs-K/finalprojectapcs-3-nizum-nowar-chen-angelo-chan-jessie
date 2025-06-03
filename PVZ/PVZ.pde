Map map;


ArrayList<PeaShooter>Plants;
ArrayList<Sun> Suns;
ArrayList<Zombie> Zombies;
Pea pea;
Sun sun;
PImage bg;
int sunBank = 0;
PImage over;
boolean addPlant = false;

boolean sunWarning;
int sunWarningTimer;

boolean cannotAddPlant;
int cannotAddPlantTimer;

void setup(){
  size(1078,720);
  
  pea = new Pea(new PVector(420,310));
  map = new Map(pea);
  
  
  Plants = new ArrayList<PeaShooter>();
  Plants.add(new PeaShooter(new PVector(2, 3), 20, map));

  
  bg = loadImage("PVZBackground.jpg");
  over = loadImage("gameOver.jpg");
  over.resize(1078,720);
  
  Suns = new ArrayList<Sun>();
  map.spawnZombies(3);
  Zombies = map.getZombies(); 
  
}

void draw(){
   background(bg);
   ArrayList<Zombie> Zombs = map.getZombies();

      //tesetese
     fill(225);
     rect(0,0,50,30);
     fill(0);
     text(sunBank,20,20);
     
     if (addPlant){
       fill(242, 100, 100);
       stroke(242, 100, 100);
     }else{
       fill(82, 240, 109);
       stroke(82, 240, 109);
     }
     rect(50, 0, 100, 100);
     fill(0);
     
     text(mouseX + " " + mouseY, 200, 50);
     
     if(frameCount % 100 == 0){
       if (Zombies.size() > 0){
         sun = new Sun(new PVector((int)(Math.random()* 500) + 300, 0), false);
         Suns.add(sun);
       }
     }
      int stop = (int)Math.random()*500 + 200;
  
      map.display(); 
      for (int i = 0; i < Suns.size(); i++){
         stop = (int)Math.random()*500 + 200;
         
         Suns.get(i).display();
         if(Suns.get(i).getCoordinate().y < stop)
           Suns.get(i).moveY();
         if(Suns.get(i).getExpiration() > 5){
           Suns.remove(i);
           i--;
         }
       
      }
      
      map.displayZombies();
      
      //for (Plant p : Plants){
      //  if (p.HP <= 0){
      //    Plants.remove(p);
      //  }
      //} 
         for(Zombie z: Zombs){
     if(z.gameOver()){
       background(over);
       noLoop();
     }
   }
   
   if(sunWarning){
     text("NOT ENOUGH SUN", 52, 50);
     sunWarningTimer--;
     if (sunWarningTimer <= 0){
       sunWarning = false;
     }
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
    
   if (mouseX >= 50 && mouseX <= 150 && mouseY >= 0 && mouseY <= 150){
      addPlant = true;
    }
    if (addPlant & mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      int x =  ((mouseX - 200) / 80) + 1;
      int y = ((mouseY - 150) / 100) + 1;
      if (sunBank >= 100){
        Plants.add(new PeaShooter(new PVector(x, y), 20, map));
        addPlant = false;
        sunBank -= 100;
      }
      else{
        sunWarning = true;
        sunWarningTimer = 120;
        addPlant = false;
      }
    }
    
      
 
}
