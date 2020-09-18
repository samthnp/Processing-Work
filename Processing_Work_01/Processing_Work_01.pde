/* Look into the Abyss
Thanapon Ponpadung
Image of a menacing-looking robot
Moving mouse will turn the light off and see the character in a different look */

void setup ()
{
  
  size(400,400);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
}

void draw ()
{ background(0);
 
 //vertical grid
 stroke(255);
 line(50,0,50,400);
 line(100,0,100,400);
 line(150,0,150,400);
 line(200,0,200,400);
 line(250,0,250,400);
 line(300,0,300,400);
 line(350,0,350,400);
 
  //horizontal grid
  line(0,50,400,50);
  line(0,100,400,100);
  line(0,150,400,150);
  line(0,200,400,200);
  line(0,250,400,250);
  line(0,300,400,300);
  line(0,350,400,350);
  
  
  
}
