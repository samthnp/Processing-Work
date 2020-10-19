boolean leftMovement = false;
boolean rightMovement = false;
boolean upMovement = false;
boolean downMovement = false;

PVector playerLocation = new PVector (0,0);
PVector playerVelocity = new PVector (0,0);

float playerSpeed = 2.5;
float playerFriction = 0.5;

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
      strokeWeight(2.5);
      stroke(51,51,255);
      fill(0,255,255);
      rect(playerLocation.x,playerLocation.y,30,30);
      
      strokeWeight(2.5);
      stroke(51,51,255);
      circle(playerLocation.x,playerLocation.y,25);
      
      noStroke();
      fill(0,0,255);
      circle(playerLocation.x,playerLocation.y,10);
      
    }
}
