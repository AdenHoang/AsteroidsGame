class Spaceship extends Floater  
{   
 public Spaceship(){
   corners = 8;
   xCorners = new int[]{-8,16,-8,-32,-10,-25,-10,-32};
   yCorners = new int[]{-8, 0 ,8, 10, 4, 0, -4,-10};
   myColor = color(255); 
   myCenterX=350;
   myCenterY=350;
   myXspeed=1;
   myYspeed=0;
   myPointDirection = 0;
 }
 public void hyperSpace(){
    myXspeed=0;
     myYspeed=0;
     myCenterX=(int)(Math.random()*700);
     myCenterY=(int)(Math.random()*700);
 }
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}
public double getXspeed(){return myXspeed;}
public double getYspeed(){return myYspeed;}
public double getPointDirection(){return myPointDirection;}
}
