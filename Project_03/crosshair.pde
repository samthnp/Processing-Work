PVector crosshairLocation = new PVector (mouseX,mouseY);

class crosshair
{
  
  float reticleSize = 50;
  
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
  
}
