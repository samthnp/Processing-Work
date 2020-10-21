/*

  Shoot and Move!
  By Thanapon Ponpadung
  
  21-Oct-2020
  
  Shoot the incoming enemy while avoiding them! 
  Get hit by any enemies and the game is over
  You also cannot move outside of your constraint field
  
  Control
  - Move up, down, left, right by W, A, S, D
  - Aim using your mouse
  - Shoot enemies by pressing the mouse
  
*/

// setup classes
player p;

int numberOfEnemy = 50;

enemy[] e = new enemy[numberOfEnemy];

crosshair c;
boolean enemyInCrosshair = false;
grid grid;
gameOverScreen g;

void setup ()

{
    // set up size
    size(400,400);
    frameRate(60);
    noCursor();
    smooth();
    
    // initialize classes //
    
    // initialize player class
    p = new player();
    // initialize crosshair class
    c = new crosshair();   
    
    // initialize grid class
    grid = new grid();
    
    // initialize the game over screen class
    g = new gameOverScreen();    
       
    initializeEnemy();
  
}

void initializeEnemy()
{
    for (int i = 0; i < e.length; i++)
    {
      e[i] = new enemy(random(55,15));
    }
}

void draw()
{
    // draw background
    background(0);
    rectMode(CENTER);
    
    // draw player's area on the left side
    strokeWeight(5);
    noStroke();
    fill(255,102,102);
    rect(50,50,100,800);
    
    // draw enemy's area on the right side
    noStroke();
    fill(252,252,252);
    rectMode(CORNERS);
    rect(100,0,400,400);
    
    // call the player class
    p.playerCharacter();
    
    // call the grid class
    grid.displayGrid();
    
    // call the game over screen class
    g.setupGameOverScreen();
    
    // call the enemy class
    for (int i=0; i<e.length; i++)
    {
      e[i].enemyCharacter();
    }
    
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
