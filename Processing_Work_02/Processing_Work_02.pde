/*

AO-15 the angry robot 

Thanapon Ponpadung

AO-15 is looking for electron to eat. Can you help him?
Be careful though! Making him angry and he'll shock everything near him!

**press left mouse button to shoot lighting shock**

*/

void setup ()
{ 
  size(400,400);
  noCursor();
  ellipseMode(CENTER);
  rectMode(CENTER); 
}

void draw ()
{ 
  noCursor();
  frameRate(60);
  background(0);
  
  /////// Moving Background Particles //////////////////////
  
  noStroke();
  fill(0,255,0,100);
  rect((140-(tan(frameCount*0.017)*200)),50,40,10);
  rect((140-(tan(frameCount*0.015)*200)),50,40,10);
  rect((140-(tan(frameCount*0.0195)*200)),75,40,10);
  rect((140-(tan(frameCount*0.0165)*200)),75,40,10);
  rect((140-(tan(frameCount*0.016)*200)),100,40,10);
  rect((140-(tan(frameCount*0.018)*200)),100,40,10);
  rect((140-(tan(frameCount*0.0198)*200)),125,40,10);
  rect((140-(tan(frameCount*0.0165)*200)),125,40,10);
  rect((140-(tan(frameCount*0.0178)*200)),150,40,10);
  rect((140-(tan(frameCount*0.0199)*200)),150,40,10);
  rect((140-(tan(frameCount*0.0188)*200)),175,40,10);
  rect((140-(tan(frameCount*0.0165)*200)),175,40,10);
  rect((140-(tan(frameCount*0.0184)*200)),200,40,10);
  rect((140-(tan(frameCount*0.0167)*200)),200,40,10);
  rect((140-(tan(frameCount*0.017)*200)),225,40,10);
  rect((140-(tan(frameCount*0.0192)*200)),225,40,10);
  rect((140-(tan(frameCount*0.0168)*200)),250,40,10);
  rect((140-(tan(frameCount*0.0189)*200)),250,40,10);
  rect((140-(tan(frameCount*0.017)*200)),275,40,10);
  rect((140-(tan(frameCount*0.0191)*200)),275,40,10);
  rect((140-(tan(frameCount*0.0162)*200)),300,40,10);
  rect((140-(tan(frameCount*0.0179)*200)),300,40,10);
  rect((140-(tan(frameCount*0.0197)*200)),325,40,10);
  rect((140-(tan(frameCount*0.017)*200)),325,40,10);
  rect((140-(tan(frameCount*0.0187)*200)),350,40,10);
  rect((140-(tan(frameCount*0.0168)*200)),350,40,10);
  rect((140-(tan(frameCount*0.017)*200)),375,40,10);
  rect((140-(tan(frameCount*0.019)*200)),375,40,10);
  rect((140-(tan(frameCount*0.01956)*200)),400,40,10);
  rect((140-(tan(frameCount*0.0178)*200)),400,40,10);
  
  /////////////// Frame vignette Effect //////////////////
  noStroke();
  fill(0,255,0);
  rect(5,0,200,15);
  rect(5,0,9,200);
  rect(5,400,200,15);
  rect(5,400,9,200);
  rect(400,0,200,15);
  rect(400,0,15,200);
  rect(400,400,200,15);
  rect(400,400,15,200);
 
  ////////// Particle Highlight /////////////////
  /* Interactive particles
   number lower than 250 will appear on the left, higher on the right */
  
  strokeWeight(5);
  stroke(13,97,200);
  noFill();
  
  // Circling Particle 1
  ellipse(50-(sin(frameCount*0.03)*250),200-(cos(frameCount*0.03)*100),60,60);
  
  // Circling Particle 2
  ellipse(250-(sin(frameCount*0.02)*150),100-(cos(frameCount*0.02)*250),60,60);
    
  // Particle 1
  ellipse(200-(cos(mouseY*0.015)*100),200-(cos(mouseX*0.015)*100),50,50);
    
  // Particle 2
  ellipse(100-(sin(mouseY*0.015)*50),100-(sin(mouseX*0.015)*50),70,70);
    
  // Particle 3
  ellipse(350-(sin(mouseY*0.01)*150),200-(-sin(mouseX*0.005)*100),60,60);
  
   // Particle 4
  ellipse(250-(sin(mouseY*0.01)*150),250-(-sin(mouseX*0.005)*100),40,40);
  
   // Particle 5
  ellipse(45-(sin(mouseY*0.01)*150),45-(-sin(mouseX*0.005)*100),40,40);
    
  // Small Particle 1
  strokeWeight(3);
  circle(width-mouseX,height-mouseY,20);
  
  ////////// Particle inner //////////////////////
  
  // Circling Particle 1
  noStroke();
  fill(60,299,200);
  ellipse(50-(sin(frameCount*0.03)*250),200-(cos(frameCount*0.03)*100),35,35);
  
  // Circling Particle 2
  ellipse(250-(sin(frameCount*0.02)*150),100-(cos(frameCount*0.02)*250),30,30);
   
  // Particle 1
  ellipse(200-(cos(mouseY*0.015)*100),200-(cos(mouseX*0.015)*100),25,25);
   
  // Particle 2
  ellipse(100-(sin(mouseY*0.015)*50),100-(sin(mouseX*0.015)*50),35,35);
   
  // Particle 3
  ellipse(350-(sin(mouseY*0.01)*150),200-(-sin(mouseX*0.005)*100),35,35);
  
  // Particle 4
  ellipse(250-(sin(mouseY*0.01)*150),250-(-sin(mouseX*0.005)*100),20,20);
  
   // Particle 5
  ellipse(45-(sin(mouseY*0.01)*150),45-(-sin(mouseX*0.005)*100),20,20);
   
  // Small particle 1
  strokeWeight(1);
  stroke(0,255,0);
  fill(60,299,200);
  circle(width-mouseX,height-mouseY,10);
 
  //////////////// Character /////////////////
 
  // Bigger outer circle
  strokeWeight(3);
  stroke(13,97,200);
  fill(13,97,200,400);
  circle(mouseX,mouseY,100);

  // Outer circle
  strokeWeight(3);
  noStroke();
  fill(69,299,200,200);
  circle(mouseX,mouseY,60);
   
  // Inner square
  strokeWeight(1);
  noStroke();
  fill(13,97,200,200);
  rect(mouseX,mouseY,40,40);
  
  //////////////// Exoskeleton Parts ///////////////
  
  // Line 1
  strokeWeight(3);
  stroke(60,299,200);
  line(mouseX-80,mouseY,mouseX,mouseY-80);
  
  // Line 2
  stroke(60,299,200);
  line(mouseX-80,mouseY,mouseX,mouseY+80);
  
  // Line 3
  stroke(60,299,200);
  line(mouseX,mouseY-80,mouseX+80,mouseY);
  
  // Line 4
  stroke(60,299,200);
  line(mouseX,mouseY+80,mouseX+80,mouseY);
  
  // Line 5
  stroke(60,299,200);
  line(mouseX-40,mouseY-40,mouseX,mouseY-60);
  
  // Line 6 
  stroke(60,299,200);
  line(mouseX,mouseY-60,mouseX+40,mouseY-40);
  
  // Line 7
  stroke(60,299,200);
  line(mouseX-40,mouseY+40,mouseX,mouseY+60);
  
  // Line 8
  stroke(60,299,200);
  line(mouseX+40,mouseY+40,mouseX,mouseY+60);
  
  // Line 9
  strokeWeight(1);
  stroke(255,255,255);
  line(mouseX,mouseY-20,mouseX-20,mouseY);
  
  // Line 10
  stroke(255,255,255);
  line(mouseX-20,mouseY,mouseX,mouseY+20);
  
  // Line 11
  stroke(255,255,255);
  line(mouseX,mouseY-20,mouseX+20,mouseY);
  
  // Line 12
  stroke(255,255,255);
  line(mouseX+20,mouseY,mouseX,mouseY+20);
  
  // Line 13
  stroke(255,255,255);
  line(mouseX,mouseY-20,mouseX,mouseY);
  
  // Line 14
  stroke(255,255,255);
  line(mouseX-20,mouseY,mouseX,mouseY);
  
  // Line 15
  stroke(255,255,255);
  line(mouseX+20,mouseY,mouseX,mouseY);
  
  // Line 16
  stroke(255,255,255);
  line(mouseX,mouseY+20,mouseX,mouseY);
  
  // Dot A
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX,mouseY-20,5);
  
  // Dot B
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX-20,mouseY,5);
  
  // Dot C
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX+20,mouseY,5);
  
  // Dot D
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX,mouseY+20,5);
  
  // Dot M
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX,mouseY-80,10);
  
  // Dot N
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX-80,mouseY,10);
  
  // Dot O
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX+80,mouseY,10);
  
  // Dot P
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX,mouseY+80,10);
  
  // Dot Q
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX-40,mouseY-40,10);
  
  // Dot R
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX+40,mouseY-40,10);
  
  // Dot S
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX-40,mouseY+40,10);
  
  // Dot T
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX+40,mouseY+40,10);
  
  // Dot U
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX,mouseY-60,10);
  
  // Dot V
  stroke(255,255,255);
  fill(255,255,255);
  circle(mouseX,mouseY+60,10);
  
  
  // inner circle
  stroke(255);
  fill(255);
  circle(mouseX,mouseY,10);

}

void mousePressed()

{
  
  // slow down framerate to make the event clearer to see
  frameRate(5);
  background(255);
    
  ////////////////// Draw lighting to particles /////////////////////////////////
   
  strokeWeight(3);
  stroke(255,0,0);
   
  // Circling particle 1
  line(mouseX,mouseY,50-(sin(frameCount*0.015)*250),200-(cos(frameCount*0.0150)*100));
  
  // circling particle 2
  line(mouseX,mouseY,250-(sin(frameCount*0.02)*150),100-(cos(frameCount*0.02)*250));
   
  // particle 1
  line(mouseX,mouseY,200-(cos(mouseY*0.015)*100),200-(cos(mouseX*0.015)*100));
   
  // particle 2
  line(mouseX,mouseY,100-(sin(mouseY*0.015)*50),100-(sin(mouseX*0.015)*50));
   
  // particle 3
  line(mouseX,mouseY,350-(sin(mouseY*0.01)*150),200-(-sin(mouseX*0.005)*100));
  
  // particle 4
  line(mouseX,mouseY,250-(sin(mouseY*0.01)*150),250-(-sin(mouseX*0.005)*100));
  
  // particle 5
  line(mouseX,mouseY,45-(sin(mouseY*0.01)*150),45-(-sin(mouseX*0.005)*100));
   
  // small particle 1
  line(mouseX,mouseY,width-mouseX,height-mouseY);
   
  ////////////////////// Drawing highlight on particles ///////////////////////
    
  // Circling Particle 1
  strokeWeight(5);
  stroke(255,0,0);
  fill(0);
  ellipse(50-(sin(frameCount*0.015)*250),200-(cos(frameCount*0.0150)*100),40,40);
  
  // Circling Particle 2
  ellipse(250-(sin(frameCount*0.02)*150),100-(cos(frameCount*0.02)*250),60,60);
    
  // Particle 1
  ellipse(200-(cos(mouseY*0.015)*100),200-(cos(mouseX*0.015)*100),50,50);
    
  // Particle 2
  ellipse(100-(sin(mouseY*0.015)*50),100-(sin(mouseX*0.015)*50),40,40);
    
  // particle 3
  ellipse(350-(sin(mouseY*0.01)*150),200-(-sin(mouseX*0.005)*100),40,40);
  
  // particle 4
  ellipse(250-(sin(mouseY*0.01)*150),250-(-sin(mouseX*0.005)*100),20,20);
 
  // particle 5
  ellipse(45-(sin(mouseY*0.01)*150),45-(-sin(mouseX*0.005)*100),40,40);
    
  // Small particle 1
  strokeWeight(3);
  circle(width-mouseX,height-mouseY,20);
 
}
