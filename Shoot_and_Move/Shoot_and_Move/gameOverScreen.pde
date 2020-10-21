// a variable that determine the restart of the game
boolean restartGame = false;

class gameOverScreen
{
  // main function for the gameOverScreen class
  void setupGameOverScreen()
  {
    displayGameOverScreen();
  }
  
  /* 
    the function that will check whenever game over is true
    and create a game over screen to tell player the game is over
    then let them press down a mouse button and reset the gameOver boolean
    which will return the game back to normal
  */
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
       restartGame = true;
     }
      
    }
  }
}
