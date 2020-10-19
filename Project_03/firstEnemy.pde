boolean gameOver = false;

boolean collisionEnabled = true;
boolean displayEnabled = true;

boolean enemyIsShot = false;

class firstEnemy
{

  PVector enemyLocation = new PVector();
  PVector enemyVelocity = new PVector();
  
  float enemyRadius;
  
  firstEnemy(float tempRadius)
  {
    resetEnemyLocation();
    enemyRadius = tempRadius;
  }
  
  void enemyCharacter()
  {
    enemyMove();
    displayFirstEnemy();
  }
  
  void enemyMove()
  {
    enemyLocation.add(enemyVelocity);
    if(enemyLocation.x < -20)
    {
      resetEnemyLocation();
    }
    
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
    enemyVelocity.x = random(-5,-1);
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
