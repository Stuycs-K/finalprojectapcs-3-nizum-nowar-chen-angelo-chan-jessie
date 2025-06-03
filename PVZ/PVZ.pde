Map map;


ArrayList<Plant>Plants;
ArrayList<Sun> Suns;
ArrayList<Zombie> Zombies;
Pea pea;
Sun sun;
PImage bg;
int sunBank = 0;
PImage over;
boolean addPeaShooter = false;
boolean addSunFlower = false;

boolean sunWarning;
int sunWarningTimer;


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
  map.spawnZombies(3);
  Zombies = map.getZombies();
 
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
     }else{
       fill(82, 240, 109);
       stroke(82, 240, 109);
     }
     rect(50, 0, 100, 100);
     
     if (addSunFlower){
       fill(242, 100, 100);
       stroke(242, 100, 100);
     }else{
       fill(255, 235, 77);
       stroke(255, 235, 77);
     }
     rect(150, 0, 100, 100);
     
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
     fill(255);
     text("NOT ENOUGH SUN", 400, 340);
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
   
   if (mouseX >= 50 && mouseX <= 150 && mouseY >= 0 && mouseY <= 100){
      addPeaShooter = true;
    }
    if (addPeaShooter & mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      int x =  ((mouseX - 200) / 80) + 1;
      int y = ((mouseY - 150) / 100) + 1;
      if (sunBank >= 100){
        Plants.add(new PeaShooter(new PVector(x, y), 20, map));
        addPeaShooter = false;
        sunBank -= 100;
      }
      else{
        sunWarning = true;
        sunWarningTimer = 120;
        addPeaShooter = false;
      }
    }
   
   
    if (mouseX > 150 && mouseX <= 250 && mouseY > 0 && mouseY <= 100){
      addSunFlower = true;
    }
   if (addSunFlower & mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      int x =  ((mouseX - 200) / 80) + 1;
      int y = ((mouseY - 150) / 100) + 1;
      if (sunBank >= 50){
        Plants.add(new SunFlower(new PVector(x, y), map));
        addSunFlower = false;
        sunBank -= 50;
      }
      else{
        sunWarning = true;
        sunWarningTimer = 120;
        addSunFlower = false;
      }
    }
     
 
}
