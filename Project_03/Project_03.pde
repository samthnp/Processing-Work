player p;
firstEnemy firstE1;
firstEnemy firstE2;
crosshair c;


void setup ()

{
    size(400,400);
    frameRate(60);
    p = new player();
    c = new crosshair();
    firstE1 = new firstEnemy(20,5);
    firstE2 = new firstEnemy(7.5,6.5);
    noCursor();
}

void draw()
{
    background(0);
    p.playerCharacter();
    c.drawCrosshair();
    
    firstE1.enemyCharacter();
    firstE2.enemyCharacter();
    
}

void keyPressed()
{
  if (key == 'a' || key == 'A')
  {
    leftMovement = true;
  }  
  
  if (key == 'd' || key == 'D')
  {
    rightMovement = true;
  }
  
  if (key == 'w' || key == 'W')
  {
    upMovement = true;
  }
  
  if (key == 's' || key == 'S')
  {
    downMovement = true;
  }
}
  
void keyReleased()
{
  if (key == 'a' || key == 'A')
  {
    leftMovement = false;
  }
  
  if (key == 'd' || key == 'D')
  {
    rightMovement = false;
  }
  
  if (key == 'w' || key == 'W')
  {
    upMovement = false;
  }
  
  if (key == 's' || key == 'S')
  {
    downMovement = false;
  }
  
}
