// creating PVector a variable for crosshair movement
PVector crosshairLocation = new PVector (mouseX,mouseY);

class crosshair
{
  // create a variable for the size of a reticle
  float reticleSize = 50;
  
  // main function
  void enableCrosshair()
  {
    drawCrosshair();
  }
  
  // display the visual for crosshair
  void drawCrosshair()
  {
    strokeWeight(3.5);
    stroke(0,0,0);
    noFill();
    
    circle(mouseX,mouseY,reticleSize);
    
    noStroke();
    fill(0);
    circle(mouseX,mouseY,reticleSize/6);
    

    
    strokeWeight(3);
    stroke(0);
    line(mouseX,mouseY-15,mouseX,mouseY-30);
    line(mouseX,mouseY+15,mouseX,mouseY+30);
    line(mouseX-15,mouseY,mouseX-30,mouseY);
    line(mouseX+15,mouseY,mouseX+30,mouseY);
  }
  
}
