Map map;


ArrayList<Plant>Plants;
ArrayList<Sun> Suns;
ArrayList<Zombie> Zombies;
Pea pea;
Sun sun;
PImage bg;
int sunBank = 0;
PImage over;
PImage img1;
PImage img2;
boolean addPeaShooter = false;
boolean addSunFlower = false;

boolean sunWarning;
int sunWarningTimer;

boolean cannotAddPlant;
int cannotAddPlantTimer;

int wave = 1;

void setup(){
  size(1078,720);
 
  pea = new Pea(new PVector(420,310));
  map = new Map(pea);
 
 
  Plants = new ArrayList<Plant>();
  Plants.add(new PeaShooter(new PVector(2, 3), 20, map));
  Plants.add(new SunFlower(new PVector(1, 2), map));
  Plants.add(new SunFlower(new PVector(3, 4), map));

 
  bg = loadImage("PVZBackground.jpg");
  over = loadImage("gameOver.jpg");
  over.resize(1078,720);
 
  Suns = new ArrayList<Sun>();
  map.spawnZombies(3, wave);
  Zombies = map.getZombies(); 

  map.placeLawnMowers();
 
}

void draw(){
   background(bg);
   ArrayList<Zombie> Zombs = map.getZombies();

   textSize(24);

      //tesetese
     fill(225);
     rect(0,0,50,30);
     fill(0);
     text(sunBank,20,20);
     
     if (addPeaShooter){
       fill(242, 100, 100);
       stroke(242, 100, 100);
       rect(50, 0, 100, 100);

     }else{
       img1 = loadImage("PeaShooterimg.jpg");
       image(img1, 50, 0);
     }
     
     if (addSunFlower){
       fill(242, 100, 100);
       stroke(242, 100, 100);
       rect(150, 0, 100, 100);
     }else{
       img1 = loadImage("SunFlowerimg.png");
       image(img1, 150, 0);
     }
     
     text(mouseX + " " + mouseY, 300, 50);
     
     if(frameCount % 100 == 0){
       if (Zombies.size() > 0){
         sun = new Sun(new PVector((int)(Math.random()* 500) + 300, 0), false);
         Suns.add(sun);
       }
     }
     
     for (Plant p : Plants){
       //int coolDown = 300;
       //boolean alternate = true;
       if (p instanceof SunFlower){
           if(frameCount % p.coolDown == 0){
            p.addSun(Suns);
           }
          //if (alternate){
          //  coolDown = 300 + (int) (Math.random() * 200 - 100);
          //  alternate = false;
          //}
       }
     }
     
      int stop = (int)Math.random()*500 + 200;
      
      if (Zombies.size() == 0){
        wave++;
        map.spawnZombies(3,wave);
      }
       
     
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
      map.displayLawnMowers();
     
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
     fill(255);
     text("NOT ENOUGH SUN", 400, 340);
     sunWarningTimer--;
     if (sunWarningTimer <= 0){
       sunWarning = false;
     }
   }
   
   if(cannotAddPlant){
     fill(255);
     text("Cannot add plant there", 400, 340);
     cannotAddPlantTimer--;
     if (cannotAddPlantTimer <= 0){
       cannotAddPlant = false;
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
   
   if (!addSunFlower && mouseX >= 50 && mouseX <= 150 && mouseY >= 0 && mouseY <= 100 ){
     if (sunBank < 100){
       sunWarning = true;
        sunWarningTimer = 120;
     }
     else{
      addPeaShooter = true;
     }
    }
    if (addPeaShooter & mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      int x =  ((mouseX - 200) / 80) + 11;
      int y = ((mouseY - 150) / 100) + 1;
      //rect(x, y, 80, 100);
      if (!map.isPlant(x,y)){
        Plants.add(new PeaShooter(new PVector(x, y), 20, map));
        addPeaShooter = false;
        sunBank -= 100;
      }
      else{
        cannotAddPlant = true;
        cannotAddPlantTimer = 120;
      }
    }
   
   
    if (!addPeaShooter && mouseX > 150 && mouseX <= 250 && mouseY > 0 && mouseY <= 100){
      if (sunBank < 50){
        sunWarning = true;
        sunWarningTimer = 120;
      }
      else{
        addSunFlower = true;
      }
    }
   if (addSunFlower & mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      int x =  ((mouseX - 200) / 80) + 1;
      int y = ((mouseY - 150) / 100) + 1;
      if (!map.isPlant(x,y)){
        Plants.add(new SunFlower(new PVector(x, y), map));
        addSunFlower = false;
        sunBank -= 50;
      }
      else{
        cannotAddPlant = true;
        cannotAddPlantTimer = 120;
      }
    }
     
 
}
