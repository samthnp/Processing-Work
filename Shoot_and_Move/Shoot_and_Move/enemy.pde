// create a variable for game over screen
boolean gameOver = false;

// create a variable for when an enemy is shot by players
boolean enemyIsShot = false;

class enemy
{
    // create PVector variables  for Location and velocity
    PVector enemyLocation = new PVector();
    PVector enemyVelocity = new PVector();
  
    // create a variable for enemy radius size
    float enemyRadius;
  
  // create tempRadius variable to wait for a value from the main file
  enemy(float tempRadius)
  {    
    resetEnemyLocation();    
    enemyRadius = tempRadius;
  }
  
  // main function for the enemy class
  void enemyCharacter()
  {
    if (gameOver == false)
    {
      collision();
      enemyHitRegistration();
      updateEnemy();
      destroyEnemy();
      displayEnemy();
    }
  }
  
  // function that makes enemies move their location
  void updateEnemy()
  {
    // adding velocity to enemy's location
    enemyLocation.add(enemyVelocity);
    
    // whenever enemy location is less than the value, reset its position
    // in this case, enemy moves from right to left and reset to the right when it reaches the left side
    if(enemyLocation.x < -20)
    {
      // call the function to reset enemy position
      resetEnemyLocation();
    } 
    
    if(gameOver == true)
    {
      resetEnemyLocation();
    }
  }
  
  // function for when player puts the mouse on enemy and click on it to shoot
  void enemyHitRegistration ()
  {    
      // create a condition when a mouse is clicked on enemy location
      if(mouseX > enemyLocation.x && mouseX < enemyLocation.x+50 && mouseY > enemyLocation.y-50 && mouseY < enemyLocation.y+50)
        {                   
          enemyInCrosshair = true;
        }     
  }
  
  void destroyEnemy()
  {
      if(mousePressed && enemyInCrosshair == true)
       {
         // hit registration effect
         strokeWeight(5);
         stroke(255,0,0,400);
         line(mouseX-20,mouseY-20,mouseX+20,mouseY+20);
         line(mouseX+20,mouseY-20,mouseX-20,mouseY+20);
            
         /* shootingEffect
         rectMode(CORNER);
         noStroke();;      
         fill(255,0,0);
         rect(0,0,10,40);
         rect(0,0,40,10);
         rect(0,360,10,400);
         rect(0,400,40,390);
            
         rect(360,0,400,10);
         rect(390,0,400,40);
         rect(360,390,400,400);
         rect(390,360,400,400);
         */
            
          enemyInCrosshair = false;
          resetEnemyLocation();
       }
  }
  
  // function to restore all the value to reset enemy position
  void resetEnemyLocation()
  {
    // when resetting enemy position, put it on the right side
    enemyLocation.x = 400+random(10,500);
    // when resetting enemy position on X axis, also assign a random Y value
    enemyLocation.y = random(0,400);
    // also assign a random value of velocity to enemy
    enemyVelocity.x = random(-2,-1);
  }
  
  // function to draw the enemy visual
  void displayEnemy()
  {
      noStroke();
      fill(0,255,0);
      ellipseMode(CENTER);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius);
      fill(0,153,0);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius/1.5);
      fill(0,102,0);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius/2);
      fill(0,255,0);
      circle(enemyLocation.x,enemyLocation.y,enemyRadius/4);
  }
  
  void collision()
  {
    if (playerLocation.x > enemyLocation.x && playerLocation.x < enemyLocation.x+50 && playerLocation.y > enemyLocation.y-50 && playerLocation.y < enemyLocation.y+50)
    {
      gameOver = true;
    }
  }
}
