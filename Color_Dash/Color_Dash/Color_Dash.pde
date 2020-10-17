/* 
  Interactive Toy
  
  Color Dash
  - use arrow keys on the keyboard to move in any directions
  - avoid the moving obstacles, don't let them hit you!
  - Getting hit will result in game over, but you can start again by press your mouse around the middle of the screen
  
  By Thanapon Ponpadung
  Student Number: 991598910
  06-Oct-2020

*/

/* 

  Code Structure
  - define variables
  - setup
  - draw - calls the main fuction
  - main function to display the gameplay
  - restart screen function
  - built-in function to define player's input
  - function to draw background grid
  - function to draw player
  - function to update player's movement
  - functions to spawn enemies
  - function to detect collision between any enemies and the player character

*/

// background grids
float verticalGrid = 100;
float horizontalGrid = 100;

// player's movement
float playerPositionX = 200;
float playerPositionY = 200;
float playerSpeed = 5.5;
boolean rightMovement = false;
boolean leftMovement = false;
boolean upMovement = false;
boolean downMovement = false;


// enemy's movement enemy numbers 1-5 move in Y axis / enemy numbers 6-10 move in X axis
int enemy1PositionX = 0;
int enemy1PositionY = 0;
int enemy1Speed = 3;

int enemy2PositionX = 0;
int enemy2PositionY = 0;
int enemy2Speed = 2;

int enemy3PositionX = 0;
int enemy3PositionY = 0;
int enemy3Speed = 2;

int enemy4PositionX = 0;
int enemy4PositionY = 0;
int enemy4Speed = 1;

int enemy5PositionX = 0;
int enemy5PositionY = 0;
int enemy5Speed = 3;

int enemy6PositionX = 0;
int enemy6PositionY = 0;
int enemy6Speed = 2;

int enemy7PositionX = 0;
int enemy7PositionY = 0;
int enemy7Speed = 2;

int enemy8PositionX = 0;
int enemy8PositionY = 0;
int enemy8Speed = 3;

int enemy9PositionX = 0;
int enemy9PositionY = 0;
int enemy9Speed = 1;

int enemy10PositionX = 0;
int enemy10PositionY = 0;
int enemy10Speed = 3;

// control whether to display the play screen or the restart screen
boolean gameIsOver = false;



void setup()
{
   // set the canvas size, draw mode, remove cursor
  size(400,400);
  rectMode(CENTER);
  noCursor();
  
}

void draw()
{
    // call the main function
    playScreen();
}

// main function - make calls to every other functions
void playScreen()
{
  // will run everything if game is not over yet
  if (gameIsOver == false){
    background(0,0,0);  
    drawGridBackground();
 
    spawnEnemy1();
    spawnEnemy2();
    spawnEnemy3();
    spawnEnemy4();
    spawnEnemy5();
    spawnEnemy6();
    spawnEnemy7();
    spawnEnemy8();
    spawnEnemy9();
    spawnEnemy10();
    
    collisionDetection();
  
    drawPlayerCharacter();
    updatePlayerMovement();
   }
   
  // if the game is over, will call the restart screen function 
  else if (gameIsOver == true){
    restartScreen();
  }
  
}

// will be called only when gameIsOver becomes true
void restartScreen ()
{
  // draw texts to tell player to click mouse to restart
  fill(0);
  rect(200,200,width,height);
  fill(0,255,0);
  textSize(22);
  stroke(2);
  text("Click Left Mouse Button",70,120);
  text("in the middle to Restart",70,150);
 
 // draw a subtitute for player's mouse for easier navigation
 noStroke();
 fill(mouseX,255,mouseY);
 rectMode(CENTER);
 rect(200,200,25,25);
 // mouse cursor after game over
 fill(0,255,0);
 circle(mouseX,mouseY,20);
  
 // if a mousePressed happen, the game will go back to the main screen 
 if (mousePressed){
    if (mouseX >= 180 && mouseX <= 220){
      gameIsOver = false;
    }
  }
}

// PlayerCharacter2 Controller using built-in function
void keyPressed()
{
  if (keyCode == LEFT){
    leftMovement = true;
  }
  else if (keyCode == RIGHT){
    rightMovement = true;
  }
  else if (keyCode == UP){
    upMovement = true;
  }
  else if (keyCode == DOWN){
    downMovement = true;
  } 
  
  else if (key == 'F' || key == 'f'){
   gameIsOver = true;
 }
  
}

// prevent input for player controller from being true forever by stoping the boolean when keys are released
void keyReleased ()
{
  if (keyCode == LEFT){
    leftMovement = false;
  }
  if (keyCode == RIGHT){
    rightMovement = false;
  }
  if (keyCode == UP){
    upMovement = false;
  }
  if (keyCode == DOWN){
    downMovement = false;
  } 
  if (key == 'F' || key == 'f'){
   gameIsOver = true;
 }
}  

// draw the grid background
void drawGridBackground()
{
  noFill();
  strokeWeight(3);
  stroke(90,180,47);
  
  //draw big vertical grid
  line(verticalGrid,0,verticalGrid,horizontalGrid+300);
  line(verticalGrid+100,0,verticalGrid+100,horizontalGrid+300);
  line(verticalGrid+200,0,verticalGrid+200,horizontalGrid+300);
  
  //draw big horizontal grid
  line(0,horizontalGrid,verticalGrid+300,horizontalGrid);
  line(0,horizontalGrid+100,verticalGrid+300,horizontalGrid+100);
  line(0,horizontalGrid+200,verticalGrid+300,horizontalGrid+200);
}

// draw and define player's position
void drawPlayerCharacter()
{
  noStroke();
  fill(0,255,0);
  circle(playerPositionX,playerPositionY,20);
  fill(32,255,63);
  circle(playerPositionX,playerPositionY,10);
  fill(255,0,0);
  circle(playerPositionX,playerPositionY,5);
  
  if(gameIsOver == true){
    playerPositionX = 200;
    playerPositionY = 200;
  }
  
}

// making the character move by updating its position from value taken previously
void updatePlayerMovement()
{
  if (leftMovement == true){
    playerPositionX = playerPositionX-playerSpeed;
  }
  if (rightMovement == true){
    playerPositionX = playerPositionX+playerSpeed;
  }
  if (playerPositionX<=20){
    playerPositionX = 20;
  }
  if (playerPositionX>=380){
    playerPositionX = 380;
  }
  
  if(upMovement == true){
    playerPositionY = playerPositionY-playerSpeed;
  }
  if(downMovement == true){
    playerPositionY = playerPositionY+playerSpeed;
  }
  if (playerPositionY<=20){
    playerPositionY = 20;
  }
  if (playerPositionY>=380){
    playerPositionY = 380;
  }
}

// Functions after this point are duplicates of one another to make more enemies
// spawnEnemy function draw the obstacles enemy and make it move
// collision function makes use of offset to compensate for the collision of player and enemies

void spawnEnemy1 ()
{
  // spawn enemy only if the game is not yet over
  if(gameIsOver == false){
  // make enemy move by increasing its Y axis position
  enemy1PositionY = enemy1PositionY + enemy1Speed;
  // whenever it reaches certain coordinate on the other end of the screen, reset its position
  if(enemy1PositionY>random(410,420)){
    enemy1PositionY = 0;
 // the spawned position is randomized  
    enemy1PositionX = int (random(50,390));
  }
 // if the game is over or player gets hit, also reset its position 
  if(gameIsOver == true){
    enemy1PositionX = 0;
    enemy1PositionY = 0;
  }
    
  noStroke();
  fill(enemy1PositionY,225,enemy1PositionY);
  rect(enemy1PositionX,enemy1PositionY,40,40);

  }
}

void spawnEnemy2 ()
{
  if(gameIsOver == false){
  enemy2PositionY = enemy2PositionY + enemy2Speed;
  
  if(enemy2PositionY>random(410,420) && enemy2PositionX != enemy1PositionX){
    enemy2PositionY = 0;
    
    enemy2PositionX = int (random(10,300));
  }
  
  if(gameIsOver == true){
    enemy2PositionX = 0;
    enemy2PositionY = 0;
  }
  
  fill(150,enemy2PositionY,enemy2PositionY);
  rect(enemy2PositionX,enemy2PositionY,40,40);

  }
}

void spawnEnemy3 ()
{
  if(gameIsOver == false){
  enemy3PositionY = enemy3PositionY + enemy3Speed;
  
  if(enemy3PositionY>random(410,420) && enemy3PositionX != enemy2PositionX){
    enemy3PositionY = 0;
    
    enemy3PositionX = int (random(20,250));
  }
  
  if(gameIsOver == true){
    enemy3PositionX = 0;
    enemy3PositionY = 0;
  }
    
  fill(enemy3PositionY,enemy3PositionY,180);
  rect(enemy3PositionX,enemy3PositionY,40,40);

  }
}

void spawnEnemy4 ()
{
  if(gameIsOver == false){
  enemy4PositionY = enemy4PositionY + enemy4Speed;
  
  if(enemy4PositionY>random(410,420) && enemy4PositionX != enemy3PositionX){
    enemy4PositionY = 0;
    
    enemy4PositionX = int (random(30,250));
  }
  
  if(gameIsOver == true){
    enemy4PositionX = 0;
    enemy4PositionY = 0;
  }
    
  fill(200,enemy2PositionY,enemy2PositionY);
  rect(enemy4PositionX,enemy4PositionY,40,40);

  }
}

void spawnEnemy5 ()
{
  if(gameIsOver == false){
  enemy5PositionY = enemy5PositionY + enemy5Speed;
  
  if(enemy5PositionY>random(410,420) && enemy5PositionX != enemy4PositionX){
    enemy5PositionY = 0;
    
    enemy5PositionX = int (random(50,150));
  }
  
  if(gameIsOver == true){
    enemy5PositionX = 0;
    enemy5PositionY = 0;
  }
    
  fill(enemy5PositionY,enemy5PositionY,enemy5PositionY);
  rect(enemy5PositionX,enemy5PositionY,40,40);

  }
}

void spawnEnemy6 ()
{
  if(gameIsOver == false){
  enemy6PositionX = enemy6PositionX - enemy6Speed;
  
  if(enemy6PositionX<10){
    enemy6PositionX = 400;
    
    enemy6PositionY = int (random(50,150));
  }
  
  if(gameIsOver == true){
    enemy6PositionX = 400;
    enemy6PositionY = 0;
  }
    
  fill(25,enemy6PositionX,enemy6PositionX);
  rect(enemy6PositionX,enemy6PositionY,40,40);

  }
}

void spawnEnemy7 ()
{
  if(gameIsOver == false){
  enemy7PositionX = enemy7PositionX - enemy7Speed;
  
  if(enemy7PositionX<10){
    enemy7PositionX = 400;
    
    enemy7PositionY = int (random(10,390));
  }
  
  if(gameIsOver == true){
    enemy7PositionX = 400;
    enemy7PositionY = 0;
  }
  
  fill(enemy6PositionX,enemy6PositionX,180);
  rect(enemy7PositionX,enemy7PositionY,40,40);

  }
}

void spawnEnemy8 ()
{
  if(gameIsOver == false){
  enemy8PositionX = enemy8PositionX - enemy8Speed;
  
  if(enemy8PositionX<10){
    enemy8PositionX = 400;
    
    enemy8PositionY = int (random(20,380));
  }
  
  if(gameIsOver == true){
    enemy8PositionX = 400;
    enemy8PositionY = 0;
  }
    
  fill(enemy6PositionX,140,enemy6PositionX);
  rect(enemy8PositionX,enemy8PositionY,40,40);

  }
}

void spawnEnemy9 ()
{
  if(gameIsOver == false){
  enemy9PositionX = enemy9PositionX - enemy9Speed;
  
  if(enemy9PositionX<10){
    enemy9PositionX = 400;
    
    enemy9PositionY = int (random(30,370));
  }
  
  if(gameIsOver == true){
    enemy9PositionX = 400;
    enemy9PositionY = 0;
  }
     
  fill(enemy6PositionX,180,60);
  rect(enemy9PositionX,enemy9PositionY,40,40);

  }
}

void spawnEnemy10 ()
{
  if(gameIsOver == false){
  enemy10PositionX = enemy10PositionX - enemy10Speed;
  
  if(enemy10PositionX<10){
    enemy10PositionX = 400;
    
    enemy10PositionY = int (random(1,400));
  }
  
  if(gameIsOver == true){
    enemy10PositionX = 400;
    enemy10PositionY = 0;
  }
    
  fill(enemy6PositionX,60,enemy6PositionX);
  rect(enemy10PositionX,enemy10PositionY,40,40);

  }
}

// whenever any collisions happen, reset all enemy position and the game is over
void collisionDetection (){
  
  if (playerPositionX +10 > (enemy1PositionX -20) && playerPositionY +10 < (enemy1PositionY +20) && playerPositionX -10 <(enemy1PositionX+20) && playerPositionY -10 > (enemy1PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy1PositionY = 0;
  }
  
  if (playerPositionX +10 > (enemy2PositionX -20) && playerPositionY +10 < (enemy2PositionY +20) && playerPositionX -10 <(enemy2PositionX+20) && playerPositionY -10 > (enemy2PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy2PositionY = 0;
  }
  
  if (playerPositionX +10 > (enemy3PositionX -20) && playerPositionY +10 < (enemy3PositionY +20) && playerPositionX -10 <(enemy3PositionX+20) && playerPositionY -10 > (enemy3PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy3PositionY = 0;
  }
  
  if (playerPositionX +10 > (enemy4PositionX -20) && playerPositionY +10 < (enemy4PositionY +20) && playerPositionX -10 <(enemy4PositionX+20) && playerPositionY -10 > (enemy4PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy4PositionY = 0;
  }
  
  if (playerPositionX +10 > (enemy5PositionX -20) && playerPositionY +10 < (enemy5PositionY +20) && playerPositionX -10 <(enemy5PositionX+20) && playerPositionY -10 > (enemy5PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy5PositionY = 0;
  }
  
  if (playerPositionX +10 > (enemy6PositionX -20) && playerPositionY +10 < (enemy6PositionY +20) && playerPositionX -10 <(enemy6PositionX+20) && playerPositionY -10 > (enemy6PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy6PositionX = 400;
  }
  
  if (playerPositionX +10 > (enemy7PositionX -20) && playerPositionY +10 < (enemy7PositionY +20) && playerPositionX -10 <(enemy7PositionX+20) && playerPositionY -10 > (enemy7PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy7PositionX = 400;
  }
  
  if (playerPositionX +10 > (enemy8PositionX -20) && playerPositionY +10 < (enemy8PositionY +20) && playerPositionX -10 <(enemy8PositionX+20) && playerPositionY -10 > (enemy8PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy8PositionX = 400;
  }
  
  if (playerPositionX +10 > (enemy9PositionX -20) && playerPositionY +10 < (enemy9PositionY +20) && playerPositionX -10 <(enemy9PositionX+20) && playerPositionY -10 > (enemy9PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy9PositionX = 400;
  }
  
  if (playerPositionX +10 > (enemy10PositionX -20) && playerPositionY +10 < (enemy10PositionY +20) && playerPositionX -10 <(enemy10PositionX+20) && playerPositionY -10 > (enemy10PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
    enemy10PositionX = 400;
  }
  
}
