import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Processing_Work_01 extends PApplet {

/*

Roger the lonely robot

Thanapon Ponpadung

- Image of a menacing-looking robot
- He's always alone. No other being can come close to him
- Clicking the mouse will turn the light off and see the character in a different look 

*/

public void setup ()
{ 
  
  ellipseMode(CENTER);
  rectMode(CENTER); 
}

public void draw ()
{ background(0);
 
 // Interactive particles
 stroke(0,255,0);
 fill(0,255,0);
 
 rect(300+(mouseX/20),100+(mouseY/60),15,7.5f);
 rect(300-(mouseX/40),100+(mouseY/60),15,7.5f);
 
 rect(50+(mouseX/20),100+(mouseY/60),15,7.5f);
 rect(50-(mouseX/40),100+(mouseY/60),15,7.5f);
 
 rect(300+(mouseX/20),350+(mouseY/60),15,7.5f);
 rect(300-(mouseX/40),350+(mouseY/60),15,7.5f);
 

 
 rect(50+(mouseX/20),350+(mouseY/60),15,7.5f);
 rect(50-(mouseX/40),350+(mouseY/60),15,7.5f);
 
 rect(25-(mouseX/20),35-(mouseY/60),15,7.5f);
 rect(25+(mouseX/40),35+(mouseY/60),15,7.5f);
 
 rect(375-(mouseX/20),35-(mouseY/60),15,7.5f);
 rect(375+(mouseX/40),35+(mouseY/60),15,7.5f);
 

 
 // number lower than 250 will appear on the left, higher on the right
 rect(250+(mouseX/20),300+(mouseY/60),10,10);
 
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
 stroke(255,255,255);
 fill(255,255,255);
 ellipse(mouseX,mouseY-30,60,60);
 
 //eyes left - right
 stroke(0);
 fill(0);
 ellipse(mouseX-10,mouseY-30,16,32);
 ellipse(mouseX+10,mouseY-30,16,32);

}

public void mousePressed()
{
  // Eyes will turn red
  stroke(255,0,0);
 fill(255,0,0);
 ellipse(mouseX-10,mouseY-30,16,32);
 ellipse(mouseX+10,mouseY-30,16,32);
}
  public void settings() {  size(400,400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Processing_Work_01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
