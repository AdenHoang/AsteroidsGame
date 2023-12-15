class Bullet extends Floater
{
  public Bullet(Spaceship aden){
    myCenterX=aden.getX();
    myCenterY=aden.getY();
    myXspeed=aden.getXspeed();
    myYspeed=aden.getYspeed();
    myPointDirection=aden.getPointDirection();
    accelerate(4);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 7, 7);
  }
  public void move(){
     myCenterX+=myXspeed;
    myCenterY+=myYspeed;
  }
 
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}

}
