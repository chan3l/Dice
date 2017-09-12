void setup()
{
  size(700,700);
	noLoop();
}
void draw()
{
	background(255);
  Die bob = new Die(350,350);
  bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
  int myX = 0;
  int myY = 0;
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
		fill(0);
    ellipse(myX, myY,100,100);
	}
}