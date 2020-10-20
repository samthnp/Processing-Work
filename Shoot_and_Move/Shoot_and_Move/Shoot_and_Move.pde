// setup classes
player p;

enemy firstE1;
enemy firstE2;
enemy firstE3;
enemy firstE4;
enemy firstE5;
enemy firstE6;
enemy firstE7;
enemy firstE8;
enemy firstE9;
enemy firstE10;
enemy firstE11;
enemy firstE12;


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
       
    // initialize enemy class
    firstE1 = new enemy(75);
    firstE2 = new enemy(50);
    firstE3 = new enemy(45);
    firstE4 = new enemy(40);
    firstE5 = new enemy(35);
    firstE6 = new enemy(30);
    firstE7 = new enemy(100);
    firstE8 = new enemy(25);
    firstE9 = new enemy(42);
    firstE10 = new enemy(37);
    firstE11 = new enemy(58);
    firstE12 = new enemy(66);
  
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
    firstE1.enemyCharacter();
    firstE2.enemyCharacter();
    firstE3.enemyCharacter();
    firstE4.enemyCharacter();
    firstE5.enemyCharacter();
    firstE6.enemyCharacter();
    firstE7.enemyCharacter();
    firstE8.enemyCharacter();
    firstE9.enemyCharacter();
    firstE10.enemyCharacter();
    firstE11.enemyCharacter();
    firstE12.enemyCharacter();   
    
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
