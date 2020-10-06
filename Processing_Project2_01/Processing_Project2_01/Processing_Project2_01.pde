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
float player2Speed = 3;

float player2PositionX;
float player2PositionY;

boolean isHit = false;
boolean rightMovement = false;
boolean leftMovement = false;


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
  fill(0,255,0);
  circle(mouseX,mouseY,10);
  
}

void drawPlayerCharacter2()
{
  
  noStroke();
  fill(0,255,0);
  circle(player2PositionX,player2PositionY,10);
  
  player2PositionX = player2MovementX;
  player2PositionY = player2MovementY;
  
}

void drawConnectingLine()
{
  
  strokeWeight(3);
  stroke(255);
  line(mouseX,mouseY,player2PositionX,player2PositionY);
  
}

// PlayerCharacter2 Controller
void keyisPressed()
{
  if (key == LEFT){
    leftMovement = true;
  }
}
