PVector crosshairLocation = new PVector (mouseX,mouseY);

boolean crosshairInSight = false;

class crosshair
{
  
  float reticleSize = 50;
  
  void enableCrosshair()
  {
    drawCrosshair();
    shootingEffect();
  }
  
  void drawCrosshair()
  {
    strokeWeight(3.5);
    stroke(255,255,255);
    noFill();
    
    circle(mouseX,mouseY,reticleSize);
    
    noStroke();
    fill(255);
    circle(mouseX,mouseY,reticleSize/6);
    

    
    strokeWeight(3);
    stroke(255);
    line(mouseX,mouseY-15,mouseX,mouseY-30);
    line(mouseX,mouseY+15,mouseX,mouseY+30);
    line(mouseX-15,mouseY,mouseX-30,mouseY);
    line(mouseX+15,mouseY,mouseX+30,mouseY);
  }
  
  void shootingEffect()
  {
    if (mousePressed)
    {
      rectMode(CORNER);
      noStroke();;      fill(255,0,0);
      rect(0,0,10,40);
      rect(0,0,40,10);
      rect(0,360,10,400);
      rect(0,400,40,390);
      
      rect(360,0,400,10);
      rect(390,0,400,40);
      rect(360,390,400,400);
      rect(390,360,400,400);
    }
  }
  

}
