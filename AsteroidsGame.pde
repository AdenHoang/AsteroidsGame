Star[] Space = new Star[200]; //create stars background
Spaceship aden = new Spaceship(); //create an instane of spaceship
ArrayList <Asteroid> AsteroidList = new ArrayList <Asteroid>(); // Declare/Initialize AsteroidList as a global variable
ArrayList <Bullet> Shots = new ArrayList <Bullet>(); //declare/initialize BulletList as a global variable
private boolean dPress;
private boolean aPress;
private boolean wPress;
private boolean sPress;
private boolean spacePress;

void setup() {
  size(700, 700);
  
  // Add asteroids to the list
  for (int i=0; i<40; i++)
  AsteroidList.add(new Asteroid(i));

//add stars
  for (int i = 0; i < Space.length; i++) {
    Space[i] = new Star();
  }
  
}


public void draw(){
  background(0);
   aden.show();
   aden.move();
   
   //Displays background
 for (int i=0; i<Space.length; i++){
   Space[i].show();
  }
  
  //Displays Asteroids
for (int j = 0; j<AsteroidList.size();j++){
  AsteroidList.get(j).move();
   AsteroidList.get(j).show();
  float d = dist((float)aden.getX(), (float)aden.getY(), (float)AsteroidList.get(j).getX(), (float)AsteroidList.get(j).getY());
    
    if (d < 20) 
      AsteroidList.remove(j); // Remove the asteroid if within a certain distance
}
  //Shoots Bullets
    for (int a = 0; a<Shots.size();a++){
  Shots.get(a).show();
  Shots.get(a).move();
}

//Destroys Asteroid + Bullets
for (int i = 0; i<AsteroidList.size(); i++)
  {
    for (int j = 0; j<Shots.size(); j++)
    {
      float distance = dist((float)Shots.get(j).getX(), (float)Shots.get(j).getY(), (float)AsteroidList.get(i).getX(), (float)AsteroidList.get(i).getY());
      if (distance<15)
      {
        AsteroidList.remove(i);
        Shots.remove(j);
        break;
      }
    }
  }
if(dPress == true)
{
  aden.turn(7);
}
if(aPress == true)
{
  aden.turn(-7);
}
if(wPress == true)
{  
  aden.accelerate(0.1);  
}
if(sPress == true)
{  
aden.accelerate(-0.1);
}
if (spacePress == true) {
    Shots.add(new Bullet(aden));
    }
}




public void keyPressed() {
 if (key == 'a')
    {
      aPress = true;
    }

    if (key == 'd')
    {
      dPress = true;
    }

    if(key == 'w')
    {
      wPress = true;
    }
     if (key == 's')
    {
      sPress = true;
    }
    if (key == ' ')
  {
    spacePress = true;
  }
    if (key == 'h') {
      aden.hyperSpace();
  }

}

public void keyReleased()
{
  if (key == 'd')
  {
    dPress = false;
  } 

  if (key == 'a')
  {
    aPress = false;
  }

  if (key == 'w')
  {
    wPress = false;
  }
   if (key == 's')
  {
    sPress = false;
  }
  if (key == ' ')
  {
    spacePress = false;
  }
}

