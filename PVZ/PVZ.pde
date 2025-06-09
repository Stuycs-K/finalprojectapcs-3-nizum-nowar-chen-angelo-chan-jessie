Map map;

//save me changes!!!
ArrayList<Plant>Plants;
ArrayList<Sun> Suns;
ArrayList<Zombie> Zombies;
Pea pea;
Sun sun;
PImage bg;
int sunBank = 0;
PImage over;
PImage img1;
PImage shovel;
boolean addPeaShooter = false;
boolean addSunFlower = false;
boolean addSnowPea = false; 
public static boolean removePlant = false;
boolean plantWarning;
int plantWarningTimer;
boolean showFrameCount = false;

boolean sunWarning;
int sunWarningTimer;

boolean cannotAddPlant;
int cannotAddPlantTimer;

int wave = 1;

void setup(){
  size(1078,720);

  pea = new Pea(new PVector(420,310), false);
  map = new Map(pea);

  shovel = loadImage("Shovel.png");
  shovel.resize(100,100);
 
  Plants = new ArrayList<Plant>();
  //Plants.add(new PeaShooter(new PVector(2, 3), 20, map));
  //Plants.add(new SunFlower(new PVector(1, 2), map));
  //Plants.add(new SunFlower(new PVector(3, 4), map));

  
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
   image(shovel, 970, 600);

   textSize(20);

      //sunBank display
     fill(225);
     rect(0,0,50,30);
     fill(0);
     text(sunBank,8,20);
     
     //wave display
     text("Wave: " + wave,1000,30);

     //buy menu
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
       if (addSnowPea){
       fill(242, 100, 100);
       stroke(242, 100, 100);
       rect(250, 0, 100, 100);
     }else{
       img1 = loadImage("Snowpea.png");
       img1.resize(100,100);
       image(img1, 250, 0);
 
     }

     //mouse Position
     if (showFrameCount){
       text(mouseX + " " + mouseY, 500, 50);
       text(frameCount, 500, 70);
     }

     //spawn natural Suns
     if(frameCount % 300 == 0){
       if (Zombies.size() > 0){
         sun = new Sun(new PVector((int)(Math.random()* 500) + 300, 0), false);
         Suns.add(sun);
       }
     }

     //spawn Sunflower Suns
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

     //stop natural Sun movement
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
      noTint();

      //spawn in new waves
      if (Zombies.size() == 0){
        wave++;
        map.spawnZombies(3,wave);
      }

      map.displayZombies();
      noTint();
      map.displayLawnMowers();

      //end game
     for(Zombie z: Zombs){
       if(z.gameOver()){
         background(over);
         noLoop();
       }
     }

   //buy menu
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
   if(plantWarning){
     fill(255);
     text("PICK A PLANT TO REMOVE", 400, 340);
     plantWarningTimer--;
     if (plantWarningTimer <= 0){
       plantWarning = false;
     }
   }
  textSize(25);
  fill(255,255,0);
  text("100", 90, 100);
  text("50", 180, 100);

}


//did not save before!!

void mouseClicked(){
  for (int i = 0; i < Suns.size(); i++){
       if(Math.abs(mouseX - ((Suns.get(i)).getCoordinate()).x) <= 25 && Math.abs(mouseY - ((Suns.get(i)).getCoordinate()).y) <= 25){
          sunBank+=50;

         Suns.remove(i);
         i--;
       }


    }

   
    if (addPeaShooter & mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      //rect(x, y, 80, 100);
      int x = map.xIntoCol(mouseX);
      int y = map.yIntoRow(mouseY);
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


    if (mouseX > 150 && mouseX <= 250 && mouseY > 0 && mouseY <= 100 && !addSnowPea && !addPeaShooter){
     
      if (sunBank < 50){
        sunWarning = true;
        sunWarningTimer = 120;
      }
      else{
        addSunFlower = !addSunFlower;
                     
      
      }
    }
   if (mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
        int x = map.xIntoCol(mouseX);
      int y = map.yIntoRow(mouseY);
      if(addSunFlower){
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
    if (mouseX >= 50 && mouseX <= 150 && mouseY >= 0 && mouseY <= 100 && !addSunFlower && !addSnowPea ){
     
     if (sunBank < 100){
       sunWarning = true;
        sunWarningTimer = 120;
     }
     else{
      addPeaShooter = !addPeaShooter;
     }
   }
       if (addSnowPea && mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      //rect(x, y, 80, 100);
      int x = map.xIntoCol(mouseX);
      int y = map.yIntoRow(mouseY);
      if (!map.isPlant(x,y)){
        Plants.add(new SnowPea(new PVector(x, y), 20, map));
        addSnowPea = false;
        sunBank -= 150;
      }
      else{
        cannotAddPlant = true;
        cannotAddPlantTimer = 120;
      }
    }


    if (mouseX > 250 && mouseX <= 350 && mouseY > 0 && mouseY <= 100 && !addSunFlower && !addPeaShooter){
      if (sunBank < 150){
        sunWarning = true;
        sunWarningTimer = 120;
      }
      else{
           addSnowPea = !addSnowPea;
   
        
      }
    }
    if(removePlant && mouseX >= 167 && mouseX <= 885 && mouseY >= 137 && mouseY <= 633){
      int x = map.xIntoCol(mouseX);
      int y = map.yIntoRow(mouseY);
      if (map.isPlant(x,y)){
        Plant p = map.getLawn()[y][x];
       map.getLawn()[y][x] = null;
       Plants.remove(p);
      }
      else{
        textSize(25);
        plantWarning = true;
        plantWarningTimer = 120;
        removePlant = false; 
      }
      removePlant = false;
    }
    if (mouseX > 970 && mouseX <= 1070 && mouseY > 600 && mouseY <= 700){
      removePlant = !removePlant;; 
    }


    



}

void keyPressed(){
  String numbers = "123456789";
  if (numbers.indexOf(key) != -1){
    wave = Integer.parseInt(String.valueOf(key));
    Zombies.clear();
  }
  //print(key);
  if (key == 's' || key == 'S'){
    sunBank += 1000;
  }
  if (key == 'f' || key == 'F'){
    showFrameCount = !showFrameCount;
  }
  if (key == 'j' || key == 'J'){
    frameCount += 1000;
  }
}
