void setup()
{
  size(400, 400);
  noLoop();
  textAlign(CENTER);
}
void draw()
{
  background(0);
  for (int i = 0; i < 100; i++)
  {
    Clover bob = new Clover();
    //____your code here__________;
    bob.show();
  }
}
void mousePressed()
{
  redraw();
}
class Clover
{
  int numLeaves, myX, myY;
  Clover()//constructor
  {
    //____your code here__________;
    numLeaves = (int)(Math.random()*2) + 3;
    //____your code here__________;
    myX = (int)(Math.random()*385) + 10;
    //____your code here__________;
    myY = (int)(Math.random()*385) + 10;
  }
  void show()
  {
    //I used some ugly math below you can ignore it
    fill(0, 255, 0);
    stroke(0, 255, 0);
    if (numLeaves == 3 || numLeaves == 4){
      float rot = random(PI*2);
      translate(myX, myY);
      rotate(rot);
      for (float i = 0; i < PI * 2; i+= PI*2/numLeaves){     
        rotate(i);
        translate(6, 0);
        ellipse(0, 0, 10, 10);
        translate(-6, 0);
        rotate(-i);
      }
      rotate(-rot);
      translate(-myX, -myY );
    } else {
      text("bad # of leaves", myX, myY);
    }
  }
}
