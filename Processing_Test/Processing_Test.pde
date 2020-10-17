

void setup()
{
  size(400, 400);
  ellipseMode(CENTER);
}


void draw()
{
  
 frameRate(60);
 
  background(50);
  fill(255);
  
  
  // %(remainder) will take the value after the division
  // example: 7%2 -> 7/2 -> 2*3=6 -> 7-6= 1, so the remainder is 1
  // example: 15%5 -> 15/5 -> 5*3=15 -> 15-15= 0, the remainder is 0
  // exmaple: 26%4 -> 26/4 -> 4*6=24 -> 26-24= 2, the remainder is 2
  // example: 46%3 -> 46/3 -> 3*15=45 -> 46-45=1, the remainder is 1
  
  // if smaller number is % by larger number the result will always be the smaller number
  // example: 1%100 -> 1/100 -> 100*0 = 0 -> 1-0 = 1, the remainder is 1
  // example: 47%50 = 47
  // exmaple: 48%50 = 48
  // example: 49%50 = 49
  // exmaple: 50%50 = 0
  // exmaple: 51%50 -> 51/50 -> 50*1 = 50 -> 51-50 = 1
  

 
  
}
