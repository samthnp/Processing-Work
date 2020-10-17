class firstEnemy
{
  
     float particleXPosition = 0;
     float particleYPosition = random(10,300);
     float particleSpeed = 7;
     
     float particleNewRadius;
     float particleNewSpeed;
  
     firstEnemy (float tempRadius, float tempSpeed)
        {    
          particleNewRadius = tempRadius;
          particleNewSpeed = tempSpeed;
        } 
        
    void drawParticle ()
        {
          fill(255);
          circle(particleXPosition,particleYPosition,particleNewRadius);
        }
    
    void moveParticle ()
        {      
          // move particle with speed
          particleXPosition = particleXPosition + particleNewSpeed;
      
          if (particleXPosition > 410)
            {
               particleXPosition = 0;
               particleYPosition = int (random(10,300));
            }
        }
  
}
