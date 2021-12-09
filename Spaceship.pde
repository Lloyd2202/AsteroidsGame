class Spaceship extends Floater  
{   
  public Spaceship() {
    myColor = color(222, 165, 164);  
    myCenterX = 250;
    myCenterY = 250;    
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = 10;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 20;
    yCorners[0] = 0;
    xCorners[1] = 0;
    yCorners[1] = 10;
    xCorners[2] = -12;
    yCorners[2] = 10;
    xCorners[3] = 2;
    yCorners[3] = 0;
    xCorners[4] = -12;
    yCorners[4] = -10;
    xCorners[5] = 0;
    yCorners[5] = -10;
  }
  public void brake() {
    myXspeed = .9 * myXspeed;
    myYspeed = .9 * myYspeed;
  }
  public void hyperspace() {
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myXspeed = (0.0);
  myYspeed = (0.0);
  myPointDirection = (int)(Math.random()*400);
}
}
