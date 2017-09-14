int chips;
void setup()
{
  size(900, 700);
  noStroke();
  noLoop();
}
void draw()
{
  //background(255);
  for (int y=50; y<601; y=y+100)
    {
        for (int x=50; x<901; x=x+100)
      {
        Die cookie = new Die(x,y);
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
  }
  void roll()
  {
    chips = 1;
  }
  void show()
  {
    //fill(180,109,15);
    ellipse(myX, myY, 90,90);
    if(chips == 1)
    {
      //fill(0);
      ellipse(100,100,30,30);
    }
  }
}