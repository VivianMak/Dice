void setup()
{
  noLoop();
  size(555, 555);
}

void draw()
{
  //pretty blue: background(184, 214, 1390);
  background(19, 168, 73);

  int sum = 0;
    for (int y = 10; y < 460; y+=60)
    {
      for (int x = 10; x < 500; x+=60)
      {
        Die shrek = new Die(x,y);
        //shrek.roll();
        shrek.show();
        sum = sum + numDots;
      }
    }  
    
    //System.out.println(sum);
    //TEXT DISPLAY
    fill(0);
    textSize(30);
    text("Total: " + sum, 200,525);
}


void mousePressed()
{
  redraw();
}

int numDots;

class Die //models one single dice cube
{
  //variable declarations 
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations
    numDots = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  
  void show()
  {
      //fill((int)(Math.random()*256)+1, (int)(Math.random()*256)+1, (int)(Math.random()*256)+1);
      fill(242, 150, 27);
      //fill(184, 214, 1390);
      rect(myX, myY, 50,50, 10);
      
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
  
/*
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
*/
