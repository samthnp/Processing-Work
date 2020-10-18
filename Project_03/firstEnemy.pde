boolean gameOver = false;

class firstEnemy
{
  
     PVector enemyLocation = new PVector (400, random(50,300));
     PVector enemyVelocity = new PVector (0,0);
     
     float enemyFriction = 0.5;
     
     
     float enemyRadius;
     float enemySpeed;
  
    firstEnemy (float tempRadius, float tempSpeed)
    {    
      enemyRadius = tempRadius;
      enemySpeed = tempSpeed;
    } 
        
    void enemyCharacter()
    {
      if (gameOver == false)
      {
        displayFirstEnemy();
        enemyMovement();
      }
    }
    
    void enemyMovement()
    {
       enemyVelocity.x = -enemySpeed;
       enemyVelocity.mult(enemyFriction);
       enemyLocation.add(enemyVelocity);
       
       if (enemyLocation.x < 0.1)
       {
         enemyLocation.x = 410;
         enemyLocation.y = random (20,380);
       }
    }
       
    void displayFirstEnemy()
    {
      noStroke();
      fill(255,0,0);
      ellipseMode(CENTER);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius);
      fill(153,0,0);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius/1.5);
      fill(102,0,0);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius/2);
      fill(255,0,0);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius/4);
    }
}
