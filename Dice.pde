void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
   background(0);
   int count = 0;
   for (int y = 0; y < 460; y = y + 20)
   {
     for (int x = 0; x < 500; x = x + 20)
     {
       Die bob = new Die(x, y);
       bob.show();
       count = count + bob.myNum;
     }
   }
   fill(255,255,255);
   text("Total: " + count, 210, 480);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  int myNum;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    myNum = (int)(Math.random() * 6 + 1);

  }
  void show()
  {
    if (myNum == 1)
    {
      noStroke();
      fill(227, 227, 252);
      rect(myX, myY, 20, 20);
      stroke(5);
      noFill();
      ellipse (myX +10, myY+10, 1, 1);
    }
    else if (myNum == 2)
    {
      noStroke();
      fill(243, 249, 77);
      rect(myX, myY, 20, 20);
      stroke(5);
      noFill();
      ellipse (myX + 5, myY+5, 1, 1);
      ellipse (myX + 15, myY+15, 1, 1);
    }
    else if (myNum == 3)
    {
      noStroke();
      fill(80, 183, 90);
      rect(myX, myY, 20, 20);
      stroke(5);
      noFill();
      ellipse (myX + 5, myY+5, 1, 1);
      ellipse(myX + 10, myY + 10, 1,1);
      ellipse (myX + 15, myY+15, 1, 1);
    }
    else if (myNum == 4)
    {
      noStroke();
      fill(176, 220, 206);
      rect(myX, myY, 20, 20);
      stroke(5);
      noFill();
      ellipse (myX + 5, myY+ 5, 1, 1);
      ellipse (myX + 15, myY+ 5, 1, 1);
      ellipse (myX + 5, myY + 15, 1, 1);
      ellipse (myX + 15, myY + 15, 1, 1);
    }
    else if (myNum == 5)
    {
      noStroke();
      fill(30, 225, 255);
      rect(myX, myY, 20, 20);
      stroke(5);
      noFill();
      ellipse (myX + 5, myY+ 5, 1, 1);
      ellipse (myX + 15, myY+ 5, 1, 1);
      ellipse (myX + 5, myY + 15, 1, 1);
      ellipse (myX + 15, myY + 15, 1, 1);
      ellipse (myX + 10, myY + 10, 1, 1);
    }
    else
    {
      noStroke();
      fill(135, 165, 236);
      rect(myX, myY, 20, 20);
      stroke(5);
      noFill();
      ellipse (myX + 5, myY+ 5, 1, 1);
      ellipse (myX + 5, myY+ 10, 1, 1);
      ellipse (myX + 5, myY + 15, 1, 1);
      ellipse (myX + 15, myY + 5, 1, 1);
      ellipse (myX + 15, myY + 10, 1, 1);
      ellipse (myX + 15, myY + 15, 1, 1);
    }
  }
}
