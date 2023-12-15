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
    double radians = Math.toRadians(myPointDirection); // Convert degrees to radians
    double speed = 4.0; // Set speed for the bullets

    // Calculate the change in x and y based on the direction and speed
    double deltaX = speed * Math.cos(radians);
    double deltaY = speed * Math.sin(radians);

    // Update the bullet's position
    myCenterX += deltaX;
    myCenterY += deltaY;
  }
 
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}

}
