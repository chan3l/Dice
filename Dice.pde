int sprink;
void setup()
{
  size(900, 700);
  noStroke();
  noLoop();
}
void draw()
{
  background(255);
  for (int y=50; y<601; y=y+100)
  {
    for (int x=50; x<901; x=x+100)
    {
      Die cookie = new Die(x, y);
      cookie.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    sprink = 3;
  }
  void show()
  {
    fill(191, 138, 69);
    ellipse(myX, myY, 90, 90);
    fill(247, 75, 158);
    ellipse(myX, myY, 75, 75);
    if (sprink == 3)
    {
      fill((int)(Math.random()*256+1), (int)(Math.random()*256+1), (int)(Math.random()*256+1));
      rect(30,30,15,4,200);
      rect(60,60,15,4,200);
      rect(40,70,15,4,200);
  }
    fill(255);
    ellipse(myX, myY, 30, 30);
  }
}