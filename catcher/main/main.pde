player p;
firstEnemy firstE1;
firstEnemy firstE2;


void setup ()

{
    size(400,400);
    p = new player();
    firstE1 = new firstEnemy(50,10);
    firstE2 = new firstEnemy(25,5);
    noCursor();
}

void draw()
{
    background(0);
    p.playerCharacter();
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
