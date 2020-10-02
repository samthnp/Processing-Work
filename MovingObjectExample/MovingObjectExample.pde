// Adapted from http://www.openprocessing.org/sketch/9418
// Character from Space Invaders (1978)

float spaceInvaderAnchorPointX=0;
float spaceInvaderAnchorPointY=0;
int spaceInvaderUnitSize=4;

void setup ()
{
  size(400, 400);
  
  frameRate (3);
}


void draw(){
  background(0);

drawSpaceInvader(spaceInvaderAnchorPointY);
spaceInvaderAnchorPointY = spaceInvaderAnchorPointY+frameCount;
  
}

void drawSpaceInvader (float spaceInvaderAnchorPointY)
{
fill(0, 255, 0);
noStroke();
rect(spaceInvaderAnchorPointX+2*spaceInvaderUnitSize, spaceInvaderAnchorPointY, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+9*spaceInvaderUnitSize, spaceInvaderAnchorPointY, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+3*spaceInvaderUnitSize, spaceInvaderAnchorPointY+1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+8*spaceInvaderUnitSize, spaceInvaderAnchorPointY+1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+2*spaceInvaderUnitSize, spaceInvaderAnchorPointY+2*spaceInvaderUnitSize, 8*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+1*spaceInvaderUnitSize, spaceInvaderAnchorPointY+3*spaceInvaderUnitSize, 2*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+4*spaceInvaderUnitSize, spaceInvaderAnchorPointY+3*spaceInvaderUnitSize, 4*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+9*spaceInvaderUnitSize, spaceInvaderAnchorPointY+3*spaceInvaderUnitSize, 2*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX, spaceInvaderAnchorPointY+4*spaceInvaderUnitSize, 12*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX, spaceInvaderAnchorPointY+5*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+2*spaceInvaderUnitSize, spaceInvaderAnchorPointY+5*spaceInvaderUnitSize, 8*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+11*spaceInvaderUnitSize, spaceInvaderAnchorPointY+5*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX, spaceInvaderAnchorPointY+6*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+2*spaceInvaderUnitSize, spaceInvaderAnchorPointY+6*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+9*spaceInvaderUnitSize, spaceInvaderAnchorPointY+6*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+11*spaceInvaderUnitSize, spaceInvaderAnchorPointY+6*spaceInvaderUnitSize, 1*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+3*spaceInvaderUnitSize, spaceInvaderAnchorPointY+7*spaceInvaderUnitSize, 2*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);
rect(spaceInvaderAnchorPointX+7*spaceInvaderUnitSize, spaceInvaderAnchorPointY+7*spaceInvaderUnitSize, 2*spaceInvaderUnitSize, 1*spaceInvaderUnitSize);

}
