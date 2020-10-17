class player
{
  
    float playerPositionX = 200;
    float playerPositionY = 200;
    
    boolean upMovement = false;
    boolean downMovement = false;
    
    void keyPressed()
      {
        if (keyCode == UP)
          {
            upMovement = true;
          }
        else if (keyCode == DOWN)
          {
            downMovement = true;
          } 
      }
      
      void keyReleased ()
      {
        if (keyCode == UP)
         {
          upMovement = false;
         }
        if (keyCode == DOWN)
        {
          downMovement = false;
        }
    }  
      
      
    void drawPlayer()
    {
      rectMode(CENTER);
      noStroke();
      fill(255,0,0);
      
      rect(playerPositionX,playerPositionY,15,15);
    }
}
