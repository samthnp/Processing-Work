/*

AO-15 the angry robot 

Thanapon Ponpadung

AO-15 is looking to wear his crown again. Can you put directly on his head?
Be careful though! Making him angry and he'll shock everything near him!

- press left mouse button to shoot lighting shock

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
 
   /* Interactive particles
   number lower than 250 will appear on the left, higher on the right */
   
  ////////// Particle Highlight /////////////////
  
  // Circling Particle 1
  strokeWeight(5);
  stroke(13,97,41);
  noFill();
  ellipse(50-(sin(frameCount*0.015)*250),200-(cos(frameCount*0.0150)*100),60,60);
  
  // circling particle 2
  ellipse(250-(sin(frameCount*0.02)*150),100-(cos(frameCount*0.02)*250),60,60);
    
  // Particle 1
  ellipse(200-(cos(mouseY*0.015)*100),200-(cos(mouseX*0.015)*100),50,50);
    
  // Particle 2
  ellipse(100-(sin(mouseY*0.015)*50),100-(sin(mouseX*0.015)*50),70,70);
    
  // particle 3
  ellipse(350-(sin(mouseY*0.01)*150),200-(-sin(mouseX*0.005)*100),60,60);
    
  // Small particle 1
  strokeWeight(3);
  circle(width-mouseX,height-mouseY,20);
  
  ////////// Particle inner ////////////////
  
  // Circling Particle 1
  noStroke();
  fill(60,299,23);
  ellipse(50-(sin(frameCount*0.015)*250),200-(cos(frameCount*0.0150)*100),35,35);
  
  // circling particle 2
  ellipse(250-(sin(frameCount*0.02)*150),100-(cos(frameCount*0.02)*250),30,30);
   
  // particle 1
  ellipse(200-(cos(mouseY*0.015)*100),200-(cos(mouseX*0.015)*100),25,25);
   
  // particle 2
  ellipse(100-(sin(mouseY*0.015)*50),100-(sin(mouseX*0.015)*50),35,35);
   
  // particle 3
  ellipse(350-(sin(mouseY*0.01)*150),200-(-sin(mouseX*0.005)*100),35,35);
   
  // small particle 1
  strokeWeight(1);
  stroke(0,255,0);
  fill(0,255,0);
  circle(width-mouseX,height-mouseY,10);
 
 /* particle unused
 stroke(0,255,0);
 fill(0,255,0);
 triangle(350+(mouseX * 0.04),100 + (mouseY * 0.04),290 + (mouseX * 0.04),100 + (mouseY * 0.04),310 + (mouseX * 0.04),50 + (mouseY * 0.04));
 */
 
 //////////////// Character /////////////////
 
  //body
  strokeWeight(1);
  stroke(0);
  fill(255);
  rect(mouseX,mouseY,20,100);
 
  // legs left - right
  strokeWeight(1);
  stroke(0,0,255);
  line(mouseX-10,mouseY+50,mouseX-30,mouseY+75);
  line(mouseX+10,mouseY+50,mouseX+30,mouseY+75);
 
  //head
  strokeWeight(1);
  stroke(0);
  fill(255,255,255);
  ellipse(mouseX,mouseY-30,60,60);
 
  //eyes left - right
  strokeWeight(1);
  stroke(0);
  fill(0);
  ellipse(mouseX-10,mouseY-30,16,32);
  ellipse(mouseX+10,mouseY-30,16,32);

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
    
  // Small particle 1
  strokeWeight(3);
  circle(width-mouseX,height-mouseY,20);
 
}
