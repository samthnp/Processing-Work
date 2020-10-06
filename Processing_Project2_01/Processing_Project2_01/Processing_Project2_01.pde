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

float verticalGrid = 100;
float horizontalGrid = 100;
float player2MovementX = 200;
float player2MovementY = 300;
float player2Speed = 5.5;



boolean isHit = false;
boolean rightMovement = false;
boolean leftMovement = false;
boolean upMovement = false;
boolean downMovement = false;


void setup()
{
 
  size(400,400);
  
  rectMode(CENTER);
  
  noCursor();
  
  frameRate(60);
  
}

void draw()
{
  
  background(2,60,0);  
  drawGridBackground();
  
  drawConnectingLine();
  
  drawPlayerCharacter1();
  drawPlayerCharacter2();
  updatePlayer2Movement();
  
  
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
  fill(53,117,211,1000);
  circle(mouseX,mouseY,10);
  
}

void drawPlayerCharacter2()
{
  
  noStroke();
  fill(129,0,220,1000);
  circle(player2MovementX,player2MovementY,10);

  
}

void drawConnectingLine()
{
  float connectingLinePosition1 = mouseX;
  float connectingLinePosition2 = mouseY;
  float connectingLinePosition3 = player2MovementX;
  float connectingLinePosition4 = player2MovementY;
  // line is drawn from player1 to player2 the position is (1,2,3,4)
  strokeWeight(3);
  stroke(255);
  line(connectingLinePosition1,connectingLinePosition2,connectingLinePosition3,connectingLinePosition4);
  
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
}  

void updatePlayer2Movement()
{
  if (leftMovement == true){
    player2MovementX = player2MovementX-player2Speed;
  }
  if (rightMovement == true){
    player2MovementX = player2MovementX+player2Speed;
  }
  if (player2MovementX<=20){
    player2MovementX = 20;
  }
  if (player2MovementX>=380){
    player2MovementX = 380;
  }
  
  if(upMovement == true){
    player2MovementY = player2MovementY-player2Speed;
  }
  if(downMovement == true){
    player2MovementY = player2MovementY+player2Speed;
  }
  if (player2MovementY<=20){
    player2MovementY = 20;
  }
  if (player2MovementX>=380){
    player2MovementX = 380;
  }
  
  
}
