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
  stroke(13,97,200);
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
  fill(60,299,200);
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
  fill(60,299,200);
  circle(width-mouseX,height-mouseY,10);
 
 /* particle unused
 stroke(0,255,0);
 fill(0,255,0);
 triangle(350+(mouseX * 0.04),100 + (mouseY * 0.04),290 + (mouseX * 0.04),100 + (mouseY * 0.04),310 + (mouseX * 0.04),50 + (mouseY * 0.04));
 */
 
 //////////////// Character /////////////////
 
// bigger outer circle
strokeWeight(3);
stroke(13,97,200);
fill(13,97,200,200);
circle(mouseX,mouseY,100);

// outer circle
strokeWeight(3);
noStroke();
fill(69,299,200,200);
circle(mouseX,mouseY,60);
 
// inner square
strokeWeight(1);
noStroke();
fill(13,97,200,200);
rect(mouseX,mouseY,40,40);

//////////////// Exoskeleton Parts ///////////////

// line 1
strokeWeight(3);
stroke(60,299,200);
line(mouseX-80,mouseY,mouseX,mouseY-80);

// line 2
stroke(60,299,200);
line(mouseX-80,mouseY,mouseX,mouseY+80);

// line 3
stroke(60,299,200);
line(mouseX,mouseY-80,mouseX+80,mouseY);

// line 4
stroke(60,299,200);
line(mouseX,mouseY+80,mouseX+80,mouseY);

// line 5
stroke(60,299,200);
line(mouseX-40,mouseY-40,mouseX,mouseY-60);

// line 6 
stroke(60,299,200);
line(mouseX,mouseY-60,mouseX+40,mouseY-40);

// line 7
stroke(60,299,200);
line(mouseX-40,mouseY+40,mouseX,mouseY+60);

// line 8
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
stroke(255,0,0);
fill(255,0,0);
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
