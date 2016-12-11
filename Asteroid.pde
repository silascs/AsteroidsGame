class Asteroid extends Floater
{
    
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
      
      corners = 14;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -1;
      yCorners[0] = 7;
      xCorners[1] = 2;
      yCorners[1] = 2;
      xCorners[2] = 4;
      yCorners[2] = 8;
      xCorners[3] = 7;
      yCorners[3] = 6;
      xCorners[4] = 10;
      yCorners[4] = 4;
      xCorners[5] = 13;
      yCorners[5] = -1;
      xCorners[6] = 14;
      yCorners[6] = -5;
      xCorners[7] = 10;
      yCorners[7] = -12;
      xCorners[8] = 5;
      yCorners[8] = -12;
      xCorners[9] = 2;
      yCorners[9] = -15;
      xCorners[10] = -4;
      yCorners[10] = -13;
      xCorners[11] = -9;
      yCorners[11] = -14;
      xCorners[12] = -13;
      yCorners[12] = -12;
      xCorners[13] = -15;
      yCorners[13] = -6;
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