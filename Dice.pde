
int sum;
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
      sum=sum+cookie.sprink;
    }
  }
  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("there are " +sum +" sprinkles!", 450,650);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Die
{
  int myX;
  int myY;
  int sprink;

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
    ellipse(myX, myY, 75,75);           //frosting
    fill(255);
    ellipse(myX, myY, 30, 30);           //white inner circle
    fill((int)(Math.random()*256+1), (int)(Math.random()*256+1), (int)(Math.random()*256+1));
    if (sprink ==1)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, myY-10);
    }
    if (sprink ==2)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, myY-10);
      quad(myX+10, myY-28, myX+22, myY-15, myX+17, myY-15, myX+6, myY-27);
    }
    if (sprink ==3)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, myY-10);
      quad(myX+10, myY-28, myX+22, myY-15, myX+17, myY-15, myX+6, myY-27);
      quad(myX+26, myY-5, myX+30, myY-7, myX+29, myY+6, myX+25, myY+11);
    }
    if (sprink == 4)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, myY-10);
      quad(myX+10, myY-28, myX+22, myY-15, myX+17, myY-15, myX+6, myY-27);
      quad(myX+26, myY-5, myX+30, myY-7, myX+29, myY+6, myX+25, myY+11);
      quad(myX+21, myY+19, myX+25, myY+22, myX+10, myY+30, myX+12, myY+26);
    }
    if (sprink ==5)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, myY-10);
      quad(myX+10, myY-28, myX+22, myY-15, myX+17, myY-15, myX+6, myY-27);
      quad(myX+26, myY-5, myX+30, myY-7, myX+29, myY+6, myX+25, myY+11);
      quad(myX+21, myY+19, myX+25, myY+22, myX+10, myY+30, myX+12, myY+26);
      quad(myX-16, myY+21, myX-18, myY+23, myX-3, myY+30, myX-2, myY+26);
    }
    if (sprink ==6)
    {
      quad(myX-25, myY-14, myX-13, myY-21, myX-13, myY-17, myX-25, myY-10);
      quad(myX+10, myY-28, myX+22, myY-15, myX+17, myY-15, myX+6, myY-27);
      quad(myX+26, myY-5, myX+30, myY-7, myX+29, myY+6, myX+25, myY+11);
      quad(myX+21, myY+19, myX+25, myY+22, myX+10, myY+30, myX+12, myY+26);
      quad(myX-16, myY+21, myX-18, myY+23, myX-3, myY+30, myX-2, myY+26);
      quad(myX-29, myY-1, myX-31, myY-1, myX-25, myY+18, myX-22, myY+13);
    }
  }
}