// assign player movement variables
boolean leftMovement = false;
boolean rightMovement = false;
boolean upMovement = false;
boolean downMovement = false;

// assign PVector variables for player's movement
PVector playerLocation = new PVector (0,0);
PVector playerVelocity = new PVector (0,0);

// assign speed and a frictin value for player
float playerSpeed = 2.5;
float playerFriction = 0.5;

class player
{      
    player ()
    {
      // assign starting position for player
      playerLocation.x = 50;
      playerLocation.y = 200;
    }
    
    // main fuction for player class
    void playerCharacter ()
    {
      if(gameOver == false)
      {    
        updatePlayer();
        playerConstraint();
        displayPlayer();
      }
    }
    
    /* 
    make player moves by using variables that is assigned
    when a keyboard key is pressed and player's input is registered
    */
    void updatePlayer()
    {
       if (keyPressed)
       {
         // up movement by decreasing the y value
         if (upMovement == true)
         {
           playerVelocity.y = -playerSpeed;
         }
         // down movement by increasing the y value
         else if (downMovement == true)
         {
           playerVelocity.y = playerSpeed;
         }
         
         else         
         playerVelocity.y *= playerFriction;
         // left movement by decreasing the x value
         if (leftMovement == true)
         {
           playerVelocity.x = -playerSpeed;
         }
         // right movement by increasing the x value
         else if (rightMovement == true)
         {
           playerVelocity.x = playerSpeed;
         }
         
         else
           // multiple the friction when player is not moving for smooth movement and stop
           playerVelocity.x *= playerFriction;
       }
       
      else playerVelocity.mult(playerFriction);
      
      playerLocation.add(playerVelocity);
    }
    
    // function for the constraint for player position
    void playerConstraint ()
    {
      // constraint on the left side
      if (playerLocation.x < 10)
      {
        playerLocation.x = 10;
      }
      // constraint on the right side
      else if (playerLocation.x > 90)
      {
        playerLocation.x = 90;
      }
      // constraint on the top side
      if (playerLocation.y < 10 )
      {
        playerLocation.y = 10;
      }
      // constraint on the bottom side
      else if (playerLocation.y > 390)
      {
        playerLocation.y = 390;
      }
    }
    
    // function to display player visual 
    void displayPlayer()
    {      
      rectMode(CENTER);
      
      // draw body
      strokeWeight(5);
      stroke(0);
      noFill();
      line(playerLocation.x,playerLocation.y,playerLocation.x,playerLocation.y+40);
      
      // draw legs
      line(playerLocation.x,playerLocation.y+40,playerLocation.x-12,playerLocation.y+50);
      line(playerLocation.x,playerLocation.y+40,playerLocation.x+12,playerLocation.y+50);
      
      // draw arms
      line(playerLocation.x-15,playerLocation.y+20,playerLocation.x+15,playerLocation.y+20);
      
      // draw head
      strokeWeight(2.5);
      stroke(0);
      fill(255);
      circle(playerLocation.x,playerLocation.y,25);
      
      // draw eye
      noStroke();
      fill(0,0,255);
      circle(playerLocation.x,playerLocation.y,10);
      
    }
}
