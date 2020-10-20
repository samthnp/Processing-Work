class gameOverScreen
{
  void setupGameOverScreen()
  {
    displayGameOverScreen();
  }
  
  void displayGameOverScreen()
  {
    if (gameOver == true)
    {
      noStroke();
      fill(255,255,255);
      rectMode(CORNERS);
      rect(0,0,400,400);
      
      textSize(22);
      stroke(2);
      fill(0);
      text("GAME OVER", 130,150);
      text("Left Click to Play Again!",70,180);
      
     // mouse cursor after game over
     strokeWeight(3);
     stroke(0);
     noFill();
     circle(mouseX,mouseY,20);
     
     if (mousePressed)
     {
       gameOver = false;
     }
      
    }
  }
}
