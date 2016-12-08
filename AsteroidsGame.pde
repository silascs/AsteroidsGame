SpaceShip serenity;
Stars [] sky;
Asteroid [] danger;
public void setup() 
{
  size(800,800);
  serenity = new SpaceShip();
  sky = new Stars[100];
  danger = new Asteroid[20] ;
  for(int i = 0; i < sky.length; i++)
    {
      sky[i] = new Stars();
    }
    for(int i = 0; i < danger.length; i++)
    {
      danger[i] = new Asteroid();
    }

}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < sky.length; i++)
    {
      sky[i].show();
    }
    for(int i = 0; i < danger.length; i++)
    {
      danger[i].show();
      danger[i].move();
    }
  serenity.show();
  serenity.move();

}
 
public void keyPressed()
{
  if (key == 'w')
  {
    serenity.accelerate(.2);
  }
  if (key == 's')
  {
    serenity.accelerate(-.2);
  }
  if (key == 'a')
  {
    serenity.rotate(-12);
  }
  if (key == 'd')
  {
    serenity.rotate(12);
  }
  if (key == 'h')
  {
    serenity.setX((int)(Math.random()*800));
    serenity.setY((int)(Math.random()*800));
    serenity.setDirectionX(0);
    serenity.setDirectionY(0);
    serenity.setPointDirection((int)(Math.random()*360));
  }
}



