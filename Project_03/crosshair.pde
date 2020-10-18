PVector crosshairLocation = new PVector (mouseX,mouseY);

class crosshair
{
  
  void drawCrosshair()
  {
    strokeWeight(2.5);
    stroke(255,255,255);
    noFill();
    
    circle(mouseX,mouseY,25);
  }
  
}
