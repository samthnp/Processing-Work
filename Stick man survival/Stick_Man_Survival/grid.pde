// class that draw the grid in the background
class grid
{  
  PVector gridX = new PVector(20,0);
  PVector gridY = new PVector(20,400);
  
  PVector horizontalGridX = new PVector(0,20);
  PVector horizontalGridY = new PVector(400,20);
  
  // main function for the grid class
  void initializeGrid()
  {
    if (gameOver == false)
    {
      displayGrid();
    }
  }
  
  // function to draw the background grid
  void displayGrid()
  {
    strokeWeight(1);
    stroke(0,0,255,100);
    noFill();
    
    // vertical line background
    line(gridX.x,gridX.y,gridY.x,gridY.y);
    line(gridX.x+20,gridX.y,gridY.x+20,gridY.y);
    line(gridX.x+40,gridX.y,gridY.x+40,gridY.y);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(gridX.x+60,gridX.y,gridY.x+60,gridY.y);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(gridX.x+80,gridX.y,gridY.x+80,gridY.y);
    line(gridX.x+100,gridX.y,gridY.x+100,gridY.y);
    line(gridX.x+120,gridX.y,gridY.x+120,gridY.y);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(gridX.x+140,gridX.y,gridY.x+140,gridY.y);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(gridX.x+160,gridX.y,gridY.x+160,gridY.y);
    line(gridX.x+180,gridX.y,gridY.x+180,gridY.y);
    line(gridX.x+200,gridX.y,gridY.x+200,gridY.y);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(gridX.x+220,gridX.y,gridY.x+220,gridY.y);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(gridX.x+240,gridX.y,gridY.x+240,gridY.y);
    line(gridX.x+260,gridX.y,gridY.x+260,gridY.y);
    line(gridX.x+280,gridX.y,gridY.x+280,gridY.y);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(gridX.x+300,gridX.y,gridY.x+300,gridY.y);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(gridX.x+320,gridX.y,gridY.x+320,gridY.y);
    line(gridX.x+340,gridX.y,gridY.x+340,gridY.y);
    line(gridX.x+360,gridX.y,gridY.x+360,gridY.y);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(gridX.x+380,gridX.y,gridY.x+380,gridY.y);
    
    // horizontal line background
    strokeWeight(1);
    line(horizontalGridX.x,horizontalGridX.y,horizontalGridY.x,horizontalGridY.y);
    line(horizontalGridX.x,horizontalGridX.y+20,horizontalGridY.x,horizontalGridY.y+20);
    line(horizontalGridX.x,horizontalGridX.y+40,horizontalGridY.x,horizontalGridY.y+40);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(horizontalGridX.x,horizontalGridX.y+60,horizontalGridY.x,horizontalGridY.y+60);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(horizontalGridX.x,horizontalGridX.y+80,horizontalGridY.x,horizontalGridY.y+80);
    line(horizontalGridX.x,horizontalGridX.y+100,horizontalGridY.x,horizontalGridY.y+100);
    line(horizontalGridX.x,horizontalGridX.y+120,horizontalGridY.x,horizontalGridY.y+120);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(horizontalGridX.x,horizontalGridX.y+140,horizontalGridY.x,horizontalGridY.y+140);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(horizontalGridX.x,horizontalGridX.y+160,horizontalGridY.x,horizontalGridY.y+160);
    line(horizontalGridX.x,horizontalGridX.y+180,horizontalGridY.x,horizontalGridY.y+180);   
    line(horizontalGridX.x,horizontalGridX.y+200,horizontalGridY.x,horizontalGridY.y+200);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(horizontalGridX.x,horizontalGridX.y+220,horizontalGridY.x,horizontalGridY.y+220);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(horizontalGridX.x,horizontalGridX.y+240,horizontalGridY.x,horizontalGridY.y+240);
    line(horizontalGridX.x,horizontalGridX.y+260,horizontalGridY.x,horizontalGridY.y+260);   
    line(horizontalGridX.x,horizontalGridX.y+280,horizontalGridY.x,horizontalGridY.y+280);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(horizontalGridX.x,horizontalGridX.y+300,horizontalGridY.x,horizontalGridY.y+300);
    stroke(0,0,255,100);
    strokeWeight(1);
    line(horizontalGridX.x,horizontalGridX.y+320,horizontalGridY.x,horizontalGridY.y+320);
    line(horizontalGridX.x,horizontalGridX.y+340,horizontalGridY.x,horizontalGridY.y+340);
    line(horizontalGridX.x,horizontalGridX.y+360,horizontalGridY.x,horizontalGridY.y+360);
    stroke(0,0,255,150);
    strokeWeight(3);
    line(horizontalGridX.x,horizontalGridX.y+380,horizontalGridY.x,horizontalGridY.y+380);   
  }
}
