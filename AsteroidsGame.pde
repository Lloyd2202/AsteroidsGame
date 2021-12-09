boolean spacePress = false;
boolean aPress = false;
boolean dPress = false;
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  if (spacePress == true)  
    bob.accelerate(0.1);
  if (aPress == true)
    bob.turn(-5);
  if (dPress == true)
    bob.turn(5);
}
public void keyPressed() {
  if (key == ' ')
    spacePress = true;
  else if (key == 'a')
    aPress = true;
  else if (key == 'd')
    dPress = true;
  else if (key == 'e')
    bob.brake();
 else if(key == 'q'){
   bob.hyperspace();
 }
}

public void keyReleased() {
  if (key == ' ')
    spacePress = false;
  else if (key == 'a')
    aPress = false;
  else if (key == 'd')
    dPress = false;
}
