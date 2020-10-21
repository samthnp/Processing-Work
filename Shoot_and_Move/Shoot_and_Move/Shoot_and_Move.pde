// setup classes
player p;

int numberOfEnemy = 12;

enemy[] e = new enemy[12];

enemy Enemy;

crosshair c;
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
    e[0] = new enemy(75);
    e[1] = new enemy(45);
    e[2] = new enemy(60);
    e[3] = new enemy(55);
    e[4] = new enemy(40);
    e[5] = new enemy(35);
    e[6] = new enemy(25);
    e[7] = new enemy(20);
    e[8] = new enemy(15);
    e[9] = new enemy(23);
    e[10] = new enemy(37);
    e[11] = new enemy(43);
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
    e[0].enemyCharacter();
    e[1].enemyCharacter();
    
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
