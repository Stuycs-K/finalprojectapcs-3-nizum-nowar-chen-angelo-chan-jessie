public class BucketHead extends Zombie{
  private int bucketHP;
  PImage bucket; 
  public BucketHead(PVector coord, int spawnTime){
    super(coord, spawnTime);
    bucket = loadImage("Buckethead_Zombie.png");
    bucket.resize(80, 125);
    bucketHP = 60;
  }
  
  public void loseHP(int x){
    if(bucketHP > 0){
      bucketHP -= x;
    }
    else{
      super.loseHP(x);
    }
  }
  void display(){

   
    if(bucketHP > 0){
      circle(this.getCoordinate().x, this.getCoordinate().y, 20);
      image(bucket, this.getCoordinate().x-25, this.getCoordinate().y-60);
    }
    else{
      super.display();
    }
  
  }
}
