class Balloon{
  
  int mySize, myX, myY;
  
  //initializwer for objects
  Balloon(int x, int y, int bigness)
   {
       mySize = bigness;
         myX = x;
         myY = y;
   }

  void inflate()
    {
      mySize=mySize+1;
    }
    void show()
    {
      fill(255,0,0);
      ellipse(myX,myY,mySize,mySize);
    }

}

Balloon bob;
void setup()
{
 size(300,300); 
 bob = new Balloon(150,150,10); 
 System.out.println(bob.myX);
}

void draw()
{
  background(0,0,0);
  bob.inflate();
  bob.show();
}
