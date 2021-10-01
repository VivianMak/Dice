Die one;

void setup()
{
  noLoop();
  size(300,300);
}
void draw()
{
  //your code here
  background(197);
 
  for (int i = 0; i < 300; i+=20){
    one = new Die(25,50);
    one.roll();
    one.show();
  }
  
  fill(0);

  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int numDots, myX, myY;
  Die(int myX, int myY) //constructor
  {
    //variable initializations here
    numDots = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    
  }
  void roll()
  {
    //your code here
    
  }
  void show()
  {
    //your code here
    fill(184, 214, 1390);
    rect(0,0, 20,20);
    
    if(numDots == 1)
       {
          isHeads = true;
       }
       if else
       {
          isHeads = false;
       }
  }
}
