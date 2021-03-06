// setup
player p;
firstEnemy firstE1;
firstEnemy firstE2;
firstEnemy firstE3;
firstEnemy firstE4;
firstEnemy firstE5;
firstEnemy firstE6;

crosshair c;


void setup ()

{
    // set up size
    size(400,400);
    frameRate(60);
    smooth();
    p = new player();
    c = new crosshair();
    // initialize classes
    firstE1 = new firstEnemy(75);
    firstE2 = new firstEnemy(50);
    firstE3 = new firstEnemy(45);
    firstE4 = new firstEnemy(40);
    firstE5 = new firstEnemy(35);
    firstE6 = new firstEnemy(30);
  
    noCursor();
}

void draw()
{
    // draw background
    background(0);
    rectMode(CENTER);
    
    // draw player's area on the left side
    strokeWeight(5);
    stroke(0,153,153);
    fill(0,153,153);
    rect(50,50,100,800);
    
    // draw enemy's area on the right side
    noStroke();
    fill(0,0,0);
    rectMode(CORNERS);
    rect(100,0,400,400);
    
    // call the player class
    p.playerCharacter();
    
    // call the enemy class
    firstE1.enemyCharacter();
    firstE2.enemyCharacter();
    firstE3.enemyCharacter();
    firstE4.enemyCharacter();
    firstE5.enemyCharacter();
    firstE6.enemyCharacter();
    
    // call the crosshair class
    c.enableCrosshair();  
}

// assign player's input on the keyboard
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

// preventing player's input from running forever. If the key's release, input will stop  
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
