int sprink;
int x;
int y;
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
      Die cookie = new Die(x,y);
      cookie.show();
      cookie.roll();
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
    if (sprink == 1)
    {
      pushMatrix();
      rotate(2/PI);
      rect(myX+30, myY-60, 15, 4, 200);
      popMatrix();
    } else if (sprink == 2)
    {
      pushMatrix();
      rotate(-1.3/PI);
      rect(20, 90, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(0.7/PI);
      rect(40, 15, 15, 4, 200);
      popMatrix();
    } else if (sprink == 3)
    {
      pushMatrix();
      rotate(2/PI);
      rect(70, -15, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-0.9/PI);
      rect(25, 90, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-1.9/PI);
      rect(5, 40, 15, 4, 200);
      popMatrix();
    } else if (sprink==4)
    {
      pushMatrix();
      rotate(2/PI);
      rect(70, -15, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-0.9/PI);
      rect(25, 90, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-1.9/PI);
      rect(5, 40, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(1.1/PI);
      rect(40, 50, 15, 4, 200);
      popMatrix();
    } else if (sprink==5)
    {      
      pushMatrix();
      rotate(1/PI);
      rect(60, 5, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-0.9/PI);
      rect(25, 90, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-1.9/PI);
      rect(5, 40, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(1.1/PI);
      rect(40, 50, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(1.5/PI);
      rect(85, 9, 15, 4, 200);
      popMatrix();
    } else if (sprink==6)
    {
      pushMatrix();
      rotate(1/PI);
      rect(60, 5, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-0.9/PI);
      rect(30, 90, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(-1.9/PI);
      rect(5, 40, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(1.1/PI);
      rect(32, 40, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(1.5/PI);
      rect(85, 9, 15, 4, 200);
      popMatrix();
      pushMatrix();
      rotate(2/PI);
      rect(65, 35, 15, 4, 200);
      popMatrix();
    }
  }
}