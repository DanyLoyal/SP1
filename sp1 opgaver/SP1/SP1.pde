float x,y,z=40;
int score;
boolean pressed;


//creating a window
void setup()
{
 size(400, 400); 
 noStroke();
 textAlign(CENTER);
 textSize(35);
 reset();
}

void draw()
{
 background(0);
 fill(255);
 //pressing the ellipse will make the score go up and change the position of the ellipse
 if(!pressed && mousePressed)
 {
  pressed = true;
  if(mouseX > x - (z/2) && mouseY > y - (z/2) && mouseX < x + (z/2) && mouseY < y + (z/2))
  {
    score++;
    randomPos();
  }
  
  //resets the game when missing the ellipse
  
  else
  {
   reset(); 
  }
 }
 
  if(pressed && !mousePressed)
  {
   pressed = false; 
  }
  
 fill(#ED1616);
  ellipse(x, y, z, z);
  text("Score : " + score,width /2, 40);
  
  //marking halfway of the game
   if(score == 10)
 {
  text("10 More to GO", width /2, 70); 
  
 }
 // resetting game after hitting a score of 20
 if(score == 20)
 
 reset();
}



//creating the reset method,this is used above to restart the game and reset the score
void reset()
{
  x = width /2;
  y = height /2;
  score = 0;
}
// creating a method that gives the ellipse a random position in the game window
void randomPos()
{
  x = random(z/2, width - (z/2));
  y = random(z/2, height - (z/2));
}
