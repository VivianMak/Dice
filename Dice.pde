Die shrek;
void setup()
{
  noLoop();
  size(555, 500);
}

void draw()
{
  //pretty blue: background(184, 214, 1390);
 background(19, 168, 73);
 
 /*
 int x = 5;
 int y = 5;
 while (y <= 500){
   while(x <= 550){
     shrek = new Die(x,y);
     shrek.show();
     x+=55;
   }
   y+=50;
 }
*/

  for (int y = 5; y <= 500; y+=55)
  {
    for (int x = 5; x <= 550; x+=55)
      shrek = new Die(x,y);
      shrek.roll();
      shrek.show();
  }  
}

void mousePressed()
{
  redraw();
}


class Die //models one single dice cube
{
  //variable declarations here
  int numDots, myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    numDots = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    
  }
  
  void roll()
  {
    if(Math.random() == 1){
      numDots = 1;
    }else if (Math.random() == 2){
      numDots = 2;
    }else if (Math.random() == 3){
      numDots = 3;
    }else if (Math.random() == 4){
      numDots = 4;
    }else if (Math.random() == 5){
      numDots = 5;
    }else if (Math.random() == 6){
      numDots = 6;
    }    
  }

  
  void show()
  {
      
      fill(242, 178, 27);
      rect(myX, myY, 50,50);
      
      fill(0,0,0);
      if(numDots == 1)
      {
        ellipse(myX+25, myY+25, 10,10);
      } 
      else if(numDots == 2)
      {
        ellipse(myX+35, myY+35, 10,10);
        ellipse(myX+15, myY+15, 10,10);
      }
      else if(numDots == 3)
      {
        ellipse(myX+40, myY+40, 10,10);
        ellipse(myX+25, myY+25, 10,10);
        ellipse(myX+10, myY+10, 10,10);
      }
      else if(numDots == 4)
      {
        ellipse(myX+35, myY+35, 10,10);
        ellipse(myX+15, myY+15, 10,10);
        ellipse(myX+35, myY+15, 10,10);
        ellipse(myX+15, myY+35, 10,10);
      }
      else if(numDots == 5)
      {
        ellipse(myX+10, myY+10, 10,10);
        ellipse(myX+40, myY+40, 10,10);
        ellipse(myX+25, myY+25, 10,10);
        ellipse(myX+10, myY+40, 10,10);
        ellipse(myX+40, myY+10, 10,10);
      }
      else if(numDots == 6)
      {
        ellipse(myX+15, myY+10, 10,10);
        ellipse(myX+35, myY+10, 10,10);
        ellipse(myX+15, myY+25, 10,10);
        ellipse(myX+35, myY+25, 10,10);
        ellipse(myX+35, myY+40, 10,10);
        ellipse(myX+15, myY+40, 10,10);
      }
  }
}
