public class BucketHead extends Zombie{
  private int bucketHP;
  PImage bucket; 
  public BucketHead(PVector coord){
    super(coord);
    //bucket = loadImage();
    bucketHP = 20;
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
    super.display();
    //image(bucket, this.getCoordinate().x-25, this.getCoordinate().y-60);
    circle(this.getCoordinate().x-25, this.getCoordinate().y-60, 50);
  }
}
