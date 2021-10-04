void setup()
{
  size(380,385);
  noLoop();
}
void draw()
{

  for(int y = 0; y <=385; y+=30)
  {
    for(int x = 0; x <=380; x+=55)
    {
      Brick bob = new Brick(x,y);
      bob.show();
    }
  }
  for(int y = 15; y <=385; y+=30)
  {
    for(int x = -20; x <=380; x+=55)
    {
      Brick poo = new Brick(x,y);
      poo.show();
    }
  }
  /*
  if (y%2 == 0){
    Brick bob = new Brick(x-25,y);
    bob.show();
  }
  */
}
class Brick
{
  int myX, myY;
  Brick(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,50,10);
  }
}
