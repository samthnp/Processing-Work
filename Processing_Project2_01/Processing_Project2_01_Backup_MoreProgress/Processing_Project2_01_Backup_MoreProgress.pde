// at least 5 variables
// use system variable width,height, mousex, mousey
// condition ex. constraining the placement of object
// ex. use mousePressed or keyPressed to toggle properties of drawn shape
// checking to see if mouse position over graphic to alter its apprearance
// at least 1 loop
// at least 2 function
// the use of random / noise
// comments to explain what does what

/* 
  Interactive Toy
  
  By Thanapon Ponpadung
  06-Oct-2020

*/
// graphic
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

// player's properties


// enemy's movement
int enemy1PositionX = 0;
int enemy1PositionY = 0;
int enemy1Speed = 3;

boolean gameIsOver = false;



void setup()
{
 
  size(400,400);
  
  rectMode(CENTER);
  
  noCursor();
  
  frameRate(60);
  
}

void draw()
{
    playScreen();
}

void playScreen ()
{
  if (gameIsOver == false)
  
 {
   
  background(2,60,0);  
  drawGridBackground();
 
  spawnEnemy1();
  collisionDetection();
  
  drawPlayerCharacter();
  updatePlayerMovement();
  
 }
  else if (gameIsOver == true){
  restartScreen();
  }
  
}


void restartScreen ()
{
  gameIsOver = true;
  fill(0);
  rect(200,200,width,height);
  fill(0,255,0);
  textSize(22);
  stroke(2);
  text("Click Left Mouse Button",70,120);
  text("to Restart",130,150);
 
 noStroke();
 fill(255);
 rect(200,200,100,100);
 // mouse cursor after game over
 fill(0,255,0);
 circle(mouseX,mouseY,20);
  
 if (mousePressed)
  {
    if (mouseX >= 180 && mouseX <= 220){
      gameIsOver = false;
    }
  }
}

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

void drawPlayerCharacter()
{
  noStroke();
  fill(53,117,211,800);
  
  circle(playerPositionX,playerPositionY,20);
  
  
  fill(53,117,211,1000);
  circle(playerPositionX,playerPositionY,10);
  fill(53,255,211);
  circle(playerPositionX,playerPositionY,5);
  
}

void collisionDetection (){
  
  if (playerPositionX +10 > (enemy1PositionX -20) && playerPositionY +10 < (enemy1PositionY +20) && playerPositionX -10 <(enemy1PositionX+20) && playerPositionY -10 > (enemy1PositionY -20) && gameIsOver == false )
  {
    gameIsOver = true;
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

// prevent input for player controller is from being true forever by stoping the boolean when keys are released
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

void spawnEnemy1 ()
{
  if(gameIsOver == false){
  enemy1PositionY = enemy1PositionY + enemy1Speed;
  
  if(enemy1PositionY>random(410,420)){
    enemy1PositionY = 0;
    
    enemy1PositionX = int (random(10,390));
  }
  
  noStroke();
  fill(255);
  rect(enemy1PositionX,enemy1PositionY,20,20);

  }
}
