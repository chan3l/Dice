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
class Die
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
    sprink = (int)(Math.random()*6+1);
  }
  void show()
  {
    fill(191, 138, 69);
    ellipse(myX, myY, 90, 90);           //base of donut
    fill(247, 75, 158);
    ellipse(myX, myY, 75, 75);           //frosting
    fill(255);
    ellipse(myX, myY, 30, 30);           //white inner circle
    fill((int)(Math.random()*256+1), (int)(Math.random()*256+1), (int)(Math.random()*256+1));
    if (sprink ==1)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, 40);
    }
    if (sprink ==2)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, 40);
      quad(60, 22, 72, 35, 67, 35, 56, 23);
    }
    if (sprink ==3)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, 40);
      quad(60, 22, 72, 35, 67, 35, 56, 23);
      quad(76, 45, 80, 43, 79, 56, 75, 61);
    }
    if (sprink == 4)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, 40);
      quad(60, 22, 72, 35, 67, 35, 56, 23);
      quad(76, 45, 80, 43, 79, 56, 75, 61);
      quad(71, 69, 75, 72, 60, 80, 62, 76);
    }
    if (sprink ==5)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, 40);
      quad(60, 22, 72, 35, 67, 35, 56, 23);
      quad(76, 45, 80, 43, 79, 56, 75, 61);
      quad(71, 69, 75, 72, 60, 80, 62, 76);
      quad(34, 71, 32, 73, 47, 80, 48, 76);
    }
    if (sprink ==6)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, 40);
      quad(60, 22, 72, 35, 67, 35, 56, 23);
      quad(76, 45, 80, 43, 79, 56, 75, 61);
      quad(71, 69, 75, 72, 60, 80, 62, 76);
      quad(34, 71, 32, 73, 47, 80, 48, 76);
      quad(21, 49, 19, 49, myX-25, 68, 28, 63);
    }
  }
}