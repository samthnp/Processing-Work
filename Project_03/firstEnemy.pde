boolean gameOver = false;

boolean collisionEnabled = true;
boolean displayEnabled = true;

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
      resetEnemyLocation();
    }
  }
  
  void resetEnemyLocation()
  {
    enemyLocation.x = 400+random(10,500);
    enemyLocation.y = random(0,400);
    enemyVelocity.x = random(-5,-1);
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
