// create a variable for game over screen
boolean gameOver = false;

// create a variable for when an enemy is shot by players
boolean enemyIsShot = false;

class firstEnemy
{
  
  // create PVector variables  for Location and velocity
  PVector enemyLocation = new PVector();
  PVector enemyVelocity = new PVector();
  
  // create a variable for enemy radius size
  float enemyRadius;
  
  // create tempRadius variable to wait for a value from the main file
  firstEnemy(float tempRadius)
  {
    resetEnemyLocation();
    enemyRadius = tempRadius;
  }
  
  // main function for the enemy class
  void enemyCharacter()
  {
    enemyMove();
    enemyHitRegistration();
    displayFirstEnemy();
  }
  
  // function that makes enemies move their location
  void enemyMove()
  {
    // adding velocity to enemy's location
    enemyLocation.add(enemyVelocity);
    
    // whenever enemy location is less than the value, reset its position
    // in this case, enemy moves from right to left and reset to the right when it reaches the left side
    if(enemyLocation.x < -20)
    {
      resetEnemyLocation();
    }   
  }
  
  // function for when player puts the mouse on enemy and click on it to shoot
  void enemyHitRegistration ()
  {    
      // create a condition when a mouse is clicked on enemy location
      if(mousePressed && mouseX > enemyLocation.x && mouseX < enemyLocation.x+50 && mouseY > enemyLocation.y-50 && mouseY < enemyLocation.y+50)
        {
          enemyIsShot = true;          
          // hit registration effect
         if (enemyIsShot == true)
          {
            strokeWeight(3);
            stroke(255,0,0,400);
            line(mouseX-10,mouseY-10,mouseX+10,mouseY+10);
            line(mouseX+10,mouseY-10,mouseX-10,mouseY+10);
            
            // shootingEffect
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
          }
          else if (enemyIsShot == false)
          {
            strokeWeight(3);
            stroke(255,255,255,0);
            line(mouseX-10,mouseY-10,mouseX+10,mouseY+10);
            line(mouseX+10,mouseY-10,mouseX-10,mouseY+10);
          }
          
        resetEnemyLocation();
        
        }    
  }
  
  void resetEnemyLocation()
  {
    frameRate(60);
    enemyLocation.x = 400+random(10,500);
    enemyLocation.y = random(0,400);
    enemyVelocity.x = random(-2,-1);
  }
       
  void displayFirstEnemy()
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
}
