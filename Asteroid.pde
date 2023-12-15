class Asteroid extends Floater
{
private double rotSpeed; 
public Asteroid(int num){
corners=6;
xCorners= new int[]{-11,7,13,6,-11,-5};
yCorners= new int[]{-8,-8,0,10,8,0};
myColor = color(255); 
myCenterX=(int)(Math.random()*700);
myCenterY=(int)(Math.random()*700);
myXspeed=(int)(Math.random()*4-4);
myYspeed=(int)(Math.random()*1);
myPointDirection = 0;
rotSpeed=num;
}
public void move() { turn(rotSpeed);   super.move();}
public int getX(){return (int)myCenterX;}
public int getY(){return (int)myCenterY;}
}
