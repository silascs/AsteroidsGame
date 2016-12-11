SpaceShip serenity;
Stars [] sky;
ArrayList <Asteroid> roids = new ArrayList <Asteroid>();
ArrayList <Bullet> bob = new ArrayList <Bullet>();
public void setup() 
{
  size(800,800);
  serenity = new SpaceShip();
  sky = new Stars[100];
  for(int i = 0; i < sky.length; i++)
    {
      sky[i] = new Stars();
    }
    for(int i = 0; i < 20; i++)
    {
      roids.add(new Asteroid());
    }

}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < sky.length; i++)
    {
      sky[i].show();
    }

  for(int i = 0; i < roids.size(); i++)
  {
    roids.get(i).show();
    roids.get(i).move();
  }


  for (int i = 0; i < bob.size(); i++)
  {
    bob.get(i).show();
    bob.get(i).move();
  }
  for (int i = 0; i < bob.size(); i++)
  {
    for (int j = 0; j < roids.size(); j++)
    {
      if(dist(bob.get(i).getX(), bob.get(i).getY(), roids.get(j).getX(), roids.get(j).getY()) < 20)
        roids.remove(j);
    }
  }
  serenity.show();
  serenity.move();


}
 
public void keyPressed()
{
  if (key == ' ')
  {
    bob.add(new Bullet(serenity));
  }
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



