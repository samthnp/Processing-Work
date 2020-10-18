boolean leftMovement = false;
boolean rightMovement = false;
boolean upMovement = false;
boolean downMovement = false;

PVector playerLocation = new PVector (0,0);
PVector playerVelocity = new PVector (0,0);

float playerSpeed = 2.5;
float playerFriction = 0.5;

float lineOffset;

class player
{      
    player ()
    {
      playerLocation.x = 200;
      playerLocation.y = 200;
    }
    
    void playerCharacter ()
    {
      playerMovement();
      playerConstraint();
      displayPlayer();
    }
    
    void playerMovement()
    {
       if (keyPressed)
       {
         if (upMovement == true)
         {
           playerVelocity.y = -playerSpeed;
         }
         
         else if (downMovement == true)
         {
           playerVelocity.y = playerSpeed;
         }
         
         else
           playerVelocity.y *= playerFriction;
       
         if (leftMovement == true)
         {
           playerVelocity.x = -playerSpeed;
         }
         
         else if (rightMovement == true)
         {
           playerVelocity.x = playerSpeed;
         }
         
         else
           playerVelocity.x *= playerFriction;
       }
       
      else playerVelocity.mult(playerFriction);
      
      playerLocation.add(playerVelocity);
    }
    
    void playerConstraint ()
    {
      if (playerLocation.x < 10)
      {
        playerLocation.x = 10;
      }
      else if (playerLocation.x > 90)
      {
        playerLocation.x = 90;
      }
      
      if (playerLocation.y < 10 )
      {
        playerLocation.y = 10;
      }
      else if (playerLocation.y > 390)
      {
        playerLocation.y = 390;
      }
    }

     
    void displayPlayer()
    {
      rectMode(CENTER);
      noStroke();
      fill(255,255,0);
      
      rect(playerLocation.x,playerLocation.y,15,15);
      strokeWeight(2.5);
      stroke(255,255,255);

    }
    
    
}
