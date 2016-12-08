class Asteroid extends Floater
{
    private int aSize;
    private int aRotate;
    public void setX(int x) {myCenterX = x;} 
    public int getX() {return (int)myCenterX;}   
    public void setY(int y) {myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x) {myDirectionX = x;} 
    public double getDirectionX() {return myDirectionX;}  
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY() {return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}
    public double getPointDirection() {return myPointDirection;}

    public Asteroid()
    {
    myColor = color(81, 74, 74);
      aSize = 3;
      corners = 14;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -1*aSize;
      yCorners[0] = 7*aSize;
      xCorners[1] = 2*aSize;
      yCorners[1] = 2*aSize;
      xCorners[2] = 4*aSize;
      yCorners[2] = 8*aSize;
      xCorners[3] = 7*aSize;
      yCorners[3] = 6*aSize;
      xCorners[4] = 10*aSize;
      yCorners[4] = 4*aSize;
      xCorners[5] = 13*aSize;
      yCorners[5] = -1*aSize;
      xCorners[6] = 14*aSize;
      yCorners[6] = -5*aSize;
      xCorners[7] = 10*aSize;
      yCorners[7] = -12*aSize;
      xCorners[8] = 5*aSize;
      yCorners[8] = -12*aSize;
      xCorners[9] = 2*aSize;
      yCorners[9] = -15*aSize;
      xCorners[10] = -4*aSize;
      yCorners[10] = -13*aSize;
      xCorners[11] = -9*aSize;
      yCorners[11] = -14*aSize;
      xCorners[12] = -13*aSize;
      yCorners[12] = -12*aSize;
      xCorners[13] = -15*aSize;
      yCorners[13] = -6*aSize;
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*800);
      aRotate = (int)((Math.random()*8)-3);
    
  
    }
    public void move()
    {
      rotate(aRotate);
      super.move();
      myCenterX += Math.cos(aRotate);
      myCenterY += Math.sin(aRotate);
    }

}