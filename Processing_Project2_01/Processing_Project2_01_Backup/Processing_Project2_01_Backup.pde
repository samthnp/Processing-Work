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
float player2PositiontX = 200;
float player2PositiontY = 200;
float player2Speed = 5.5;
boolean rightMovement = false;
boolean leftMovement = false;
boolean upMovement = false;
boolean downMovement = false;

// player's properties
boolean isHit = false;

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
  if (gameIsOver == false){
  background(2,60,0);  
  drawGridBackground();
 
  spawnEnemy1();
  
  drawConnectingLine();
  
  drawPlayerCharacter1();
  drawPlayerCharacter2();
  updatePlayer2Movement();
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

void drawPlayerCharacter1()
{
  // draw shape and assign movement
  noStroke();
  fill(53,117,211,800);
  circle(mouseX,mouseY,20);
  fill(53,117,211,1000);
  circle(mouseX,mouseY,10);
  fill(53,255,211);
  circle(mouseX,mouseY,5);
}

void drawPlayerCharacter2()
{
  noStroke();
  fill(129,0,220,1000);
  circle(player2PositiontX,player2PositiontY,10);
}

void drawConnectingLine()
{
  float LinePosition1 = mouseX;
  float LinePosition2 = mouseY;
  float LinePosition3 = player2PositiontX;
  float LinePosition4 = player2PositiontY;
  // line is drawn from player1 to player2 the position is (1,2,3,4)
  strokeWeight(8);
  stroke(0,255,0);
  line(LinePosition1,LinePosition2,LinePosition3,LinePosition4);
  strokeWeight(3);
  stroke(0);
  line(LinePosition1,LinePosition2,LinePosition3,LinePosition4);
  
  if (gameIsOver == false){
  
  if ((enemy1PositionY > LinePosition2 || enemy1PositionY > LinePosition4) && (enemy1PositionX > LinePosition1 && enemy1PositionX < LinePosition3)){
   
      gameIsOver = true;
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

void updatePlayer2Movement()
{
  if (leftMovement == true){
    player2PositiontX = player2PositiontX-player2Speed;
  }
  if (rightMovement == true){
    player2PositiontX = player2PositiontX+player2Speed;
  }
  if (player2PositiontX<=20){
    player2PositiontX = 20;
  }
  if (player2PositiontX>=380){
    player2PositiontX = 380;
  }
  
  if(upMovement == true){
    player2PositiontY = player2PositiontY-player2Speed;
  }
  if(downMovement == true){
    player2PositiontY = player2PositiontY+player2Speed;
  }
  if (player2PositiontY<=20){
    player2PositiontY = 20;
  }
  if (player2PositiontY>=380){
    player2PositiontY = 380;
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
