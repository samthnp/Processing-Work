boolean leftMovement = false;
boolean rightMovement = false;
boolean upMovement = false;
boolean downMovement = false;

PVector playerLocation = new PVector (0,0);
PVector playerVelocity = new PVector (0,0);

float playerSpeed = 5;
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
      display();
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
         
         if (rightMovement == true)
         {
           playerVelocity.x = playerSpeed;
         }
         
         else
           playerVelocity.x *= playerFriction;
       }
       
      else playerVelocity.mult(playerFriction);
      
      playerLocation.add(playerVelocity);
       
    }

     
    void display()
    {
      rectMode(CENTER);
      noStroke();
      fill(255,0,0);
      
      rect(playerLocation.x,playerLocation.y,15,15);
    }
    
    
}
