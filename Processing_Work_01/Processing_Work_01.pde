/*

Roger the lonely robot

Thanapon Ponpadung

- Image of a menacing-looking robot
- He's always alone. No other being can come close to him
- Clicking the mouse will turn the light off and see the character in a different look 

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
 
 // Interactive particles
 strokeWeight(1);
 stroke(60,229,23);
 fill(0,255,0);
 
 rect(380+(mouseX/20),380+(mouseY/60),15,7.5);
 rect(380-(mouseX/40),380+(mouseY/60),15,7.5);
 
 rect(25-(mouseX/20),40-(mouseY/60),15,7.5);
 rect(25+(mouseX/40),40+(mouseY/60),15,7.5);
 

 

 
 // number lower than 250 will appear on the left, higher on the right
 stroke(0,255,0);
 fill(0,255,0);
 //small less interactive particle
 circle(250+(mouseX/20),300+(mouseY/60),10);
 
 // particle that move with mouse
 circle(width-mouseX,height-mouseY,10);
 circle(50+(width-mouseX),50+(height-mouseY),10);
 
 //////////////////////////////////////////////////////////////////////////////////
 
 //body
 stroke(0);
 fill(255);
 rect(mouseX,mouseY,20,100);
 
 // legs left - right
 stroke(0,0,255);
 line(mouseX-10,mouseY+50,mouseX-30,mouseY+75);
 line(mouseX+10,mouseY+50,mouseX+30,mouseY+75);
 
 //head
 stroke(0);
 fill(255,255,255);
 ellipse(mouseX,mouseY-30,60,60);
 
 //eyes left - right
 stroke(0);
 fill(0);
 ellipse(mouseX-10,mouseY-30,16,32);
 ellipse(mouseX+10,mouseY-30,16,32);

}

void mousePressed()
{
  // Eyes will turn red
  stroke(255,0,0);
 fill(255,0,0);
 ellipse(mouseX-10,mouseY-30,16,32);
 ellipse(mouseX+10,mouseY-30,16,32);
}
