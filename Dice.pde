void setup()
{
  size(700, 700);
  noLoop();
}
void draw()
{
  background(255);
  for (int y=50; y<601; y=y+100)
    {
        for (int x=50; x<701; x=x+100)
      {
        Die bob = new Die(x,y);
        bob.show();
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
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill(180,109,15);
    ellipse(myX, myY, 90,90);
  }
}